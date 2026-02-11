<?php
/**
 * CV Markdown → WordPress HTML converter
 *
 * Converts staging/CV_andre_clements_draft_v1.md to pasteable WordPress HTML.
 * Strips the H1 title and draft metadata line (WordPress page title handles those).
 *
 * Usage: php convert-cv.php
 * Output: staging/CV_andre_clements_for_wp.html
 */

$base = __DIR__;

// --- TRY: Load Parsedown ---
$parsedownPath = $base . '/Parsedown.php';
if (!file_exists($parsedownPath)) {
    fwrite(STDERR, "IF-NOT: Parsedown.php not found at {$parsedownPath}\n");
    exit(1);
}
require $parsedownPath;

// --- TRY: Read markdown source ---
$mdPath = $base . '/CV_andre_clements_draft_v1.md';
if (!file_exists($mdPath)) {
    fwrite(STDERR, "IF-NOT: CV markdown not found at {$mdPath}\n");
    exit(1);
}
$md = file_get_contents($mdPath);
if ($md === false) {
    fwrite(STDERR, "IF-NOT: Could not read {$mdPath}\n");
    exit(1);
}

// --- Strip H1 title and draft note ---
// Remove the first line (# CV: ...) and the draft blockquote (> **Draft v2.2**...)
$lines = explode("\n", $md);
$stripped = [];
$skipNext = false;
$foundFirstHeading = false;

foreach ($lines as $i => $line) {
    // Skip the H1 heading
    if (!$foundFirstHeading && preg_match('/^# /', $line)) {
        $foundFirstHeading = true;
        continue;
    }
    // Skip the draft note blockquote immediately after H1
    if ($foundFirstHeading && !$skipNext && preg_match('/^>\s*\*\*Draft/', $line)) {
        $skipNext = true;
        continue;
    }
    // Skip blank line after draft note
    if ($skipNext && trim($line) === '') {
        $skipNext = false;
        continue;
    }
    $skipNext = false;
    $stripped[] = $line;
}

$md = implode("\n", $stripped);

// --- AS-IF: Convert markdown to HTML ---
$parsedown = new Parsedown();
$parsedown->setSafeMode(false); // We trust our own content
$html = $parsedown->text($md);

// --- Output ---
$outPath = $base . '/CV_andre_clements_for_wp.html';
$written = file_put_contents($outPath, $html);

if ($written === false) {
    fwrite(STDERR, "IF-NOT: Could not write to {$outPath}\n");
    exit(1);
}

echo "OK: Wrote " . strlen($html) . " bytes to {$outPath}\n";
echo "Sections (h2 count): " . substr_count($html, '<h2>') . "\n";
echo "Subsections (h3 count): " . substr_count($html, '<h3>') . "\n";
echo "List items: " . substr_count($html, '<li>') . "\n";
echo "Links: " . substr_count($html, '<a ') . "\n";
echo "Blockquotes: " . substr_count($html, '<blockquote>') . "\n";
echo "Horizontal rules: " . substr_count($html, '<hr') . "\n";
