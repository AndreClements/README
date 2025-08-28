`projects/theses/diff-sophistication/pilots/pilot_001_tls_interface_adaptation.md`

# Case Study: Diff-Sophistication at a TLS Interface

>*A pilot in maculate reconciliation and parametric interface design*
>
> ```yaml
> contract:
>   intent: "Anonymised case translating a live server migration into a validation pilot for Diff-Sophistication + Parametric Authorship, enriched with practitioner dialogue. Observations from 'the wild'."
>   field: "Human–Computer Interaction"
>   scope: ["commercial transactions", "academia"]
>   status: "complete"
>   validation: ["falsifiability_probe", "Proximity_to_intent", "AndYet_counterread"]
>   principles_applied: ["situational exceptions", "responsible efficiency", "precaution", "consentful directness"]
>   ethics:
>     anonymisation: "roles, hosts; timestamps≈day; quotes lightly paraphrased"
>     non_weaponisation: true
>   metrics: ["F","I","C","T_x","consent_score","defaults_digest_change","handshake_success_rate","WT_hits","CoCuP_events","rollback_count"]
>   tags: ["TLS","SECLEVEL=1","TLS1.2","TLS1.3","ECDSA","RSA","κ-adapter","PVP"]
>   aligns:
>     - "projects/theses/parametric_authorship.md"
>     - "projects/theses/diff-sophistication.md"
>     - "docs/methods/METHODOLOGY_CI.md"
> ```

## Preamble: propositions escalated from practice

This pilot also **generates** definitions to be promoted into the parent theses.

* **Diff (Δ).** Deliberately double-valent:  
  (1) *differentiation* — a small, controlled parameter change;  
  (2) *git diff* — the minimal, auditable textual/operational delta.  
  Here, Δ lives at the **interface**: `Δ_rule := {SECLEVEL=1@vhost}`, `Δ_cert := {+RSA fallback}`, `Δ_proto := {TLS{1.2,1.3} only}`.

* **Sophistication (S).** Not status theatre; an operational property: **capacity to maintain declared invariants under small perturbations** while exposing **legible control surfaces** (headers, logs, ledgers).

* **Diff-Sophistication (DS).** Yield from small, legible deltas:
  $$
  DS := \frac{\Delta Y}{T_x + (1 - I)} \quad \text{with} \quad Y = F \cdot I \cdot C
  $$
  `F` = functionality ∈ {0,1}, `I` = integrity ∈ [0,1], `C` = consent ∈ [0,1], `T_x` = complexity tax of the change.  
  **Goal:** maximise `ΔY` via the smallest safe `Δ`, keep `T_x` low, conserve integrity, sustain consent.

* **Rails (ethics & anonymisation).** Hosts → `lic.example.com`; humans → roles; timestamps ≈ day; quotes lightly paraphrased; **non-weaponisation** governs publication.

* **Vital signals.** `defaults_digest_change`, `handshake_success_rate ↑`, `WT_hits = 0`, `CoCuP_events = 0`, `rollback_count ≤ 1`.

---

## Abstract

A legacy, closed-source C++ desktop client (Qt5 lineage) failed to connect to a modern, hardened EL9-class Linux server after a licensing migration. Packet traces showed TLS failure immediately post-ClientHello. A short, monitored **premise-validation probe** (temporary system crypto relax) proved a TLS compatibility gap and was rolled back per protocol. The durable fix was **parametric** and **scoped**: a per-vhost OpenSSL security-level relaxation (`@SECLEVEL=1`) plus **dual certificates** (ECDSA primary, RSA-2048 fallback) while enforcing **TLS 1.2/1.3 only**. TLS-aware logging with bounded rotation ensured observability. Result: high yield without global weakenings — Diff-Sophistication’s “small, reversible, legible” posture in a maculate context.

---

## 1) Context — a maculate reality

* **Legacy client artefact.** Fixed-sophistication crypto stack, long-tail Windows deployments (XP-era toolchains; CNC integrations). Upgrade paths blocked by workflow/device dependencies.
* **Modern server hyperstrate.** EL9-class Linux + OpenSSL 3 + Apache, hosting endpoints for `lic.example.com`, system crypto policy at secure default.

**Surface of contention:** TLS handshake — the interface where agents of differing sophistication failed to negotiate a shared reality.

---

## 2) Method — the *as-if* / *if-not* diagnostic circuit

Following *A Pragmatics of Engagement*: act **as-if** the simplest cause holds; run **if-not** probes to falsify.

1. **As-if: network block.** **If-not probe:** `tcpdump` → TCP handshake OK ⇒ falsified.
2. **As-if: simple server misconfig.** **If-not probe:** trace shows immediate server alert right after ClientHello ⇒ handshake policy layer.
3. **As-if: protocol/cipher mismatch.** **If-not probe:** `openssl s_client` confirms server capabilities; legacy client cannot negotiate under `DEFAULT` ⇒ hypothesis stands.
4. **Peer validation (AndYet\_counterread).** Observer Node affirms diagnostic path; suggests RSA-2048 fallback; notes client-side library swap as long-term remedy.

Risk cadence followed the heuristic: `risk_index = complexity × power × distance_from_wetware`.

---

## 3) Analysis — authorship at the interface

### 3.1 Monolithic intervention as **premise-validation probe**

* **Authored rule (temporary, monitored):** relax system-wide crypto (`LEGACY`) for minutes to maximise diagnostic signal.
* **Intent & effect:** diagnostic only. Client connects (“Boom.”) ⇒ premise validated.
* **Governance:** executed with stakeholder consent; immediately rolled back. “With everything open, the server is a sitting duck.”
* **DS read:** a valuable, high-signal probe that consciously incurs **Complexity Tax** for clarity, strictly time-boxed and consented. Precaution + responsible efficiency upheld.

### 3.2 Parametric intervention as scoped adapter (κ)

* **Authored vhost rules (durable):**

  * `SSLProtocol -all +TLSv1.2 +TLSv1.3` (keep protocols modern)
  * `SSLOpenSSLConfCmd CipherString "DEFAULT:@SECLEVEL=1"` (lower security level for **this vhost only**)
  * **Dual certificates:** ECDSA (primary) + RSA-2048 (fallback) from a public CA
* **Observed negotiation:** legacy client → TLS 1.2 with `ECDHE-RSA-CHACHA20-POLY1305`; modern browsers → TLS 1.2/1.3 with faster ECDSA.
* **Parametric Authorship read:** boundary authored, not binaries rewritten. The κ-adapter reconciles heterogeneous actors while preserving global invariants — a concrete instance of **Dependency Inversion of Dignity**.

---

## 4) Yield equation (ideogram)

Let `Y = F · I · C`.

* **Broken:** `F=0, I≈0.9, C=1 → Y=0`
* **Probe (LEGACY):** `F=1, I≈0.3, C≈0.2 (diagnostic-only) → Y≈0.06`
* **Scoped fix:** `F=1, I≈0.95, C=1 → Y≈0.95`

**Why it matters:** the highest yield came from the smallest safe `Δ` that preserved integrity and consent.

---

## 5) Observability & bounds

* **TLS-aware access log:** custom `LogFormat` capturing `%{SSL_PROTOCOL}x` and `%{SSL_CIPHER}x` to `access_tls.log`.
* **Rotation & caps:** `logrotate` on `/var/www/licensing-app/logs/*.log` with `su apache apache`, `daily`, `rotate 14`, `maxsize 25M`, `compress`, `dateext`, `copytruncate`.
* **Outcome:** durable observability without maintenance drag.

---

## 6) Dialogue fragments → constraints (anonymised)

* **Observer Node:** “We replaced a Java SDK crypto lib in a similar case.” → **Long-term**: client-side upgrade/swappable TLS lib.
* **Observer Node:** “RSA-2048 is fine.” → Peer validation for dual-cert posture.
* **Application Owner:** accepts brief downtime for secure fix → **Consentful directness** enables probe → scoped remedy.
* **System Steward:** “Stable, least-change fix: TLS 1.2 + RSA fallback, scoped to vhost, bounded logs.” → **Small, reversible, legible**.

---

## 7) Binding to frameworks

* **Diff-Sophistication.** Reconciles heterogeneous sophistication via a **surface protocol**. High yield, low churn, guardrails intact.
* **Parametric Authorship.** Exercised at the interface (vhost). Global policies remain abstract; concrete tools adapt via κ. Dialogue + logs function as minimal **ledger**; probe/rollback enact **circuit-breaker ethics**.

---

## 8) Risks & mitigations (final state)

* **SECLEVEL=1 (local).** Slightly widens admissible ciphers on one endpoint.
  **Mitigation:** scope to `lic.example.com`; enforce TLS 1.2+/1.3; monitor.
* **Future client decay (TLS 1.1 demand).**
  **Mitigation:** do **not** weaken main vhost. If ever unavoidable, deploy an **isolated TLS-terminating sidecar** with strict IP fencing, rate limits, and short-lived credentials.

---

### Appendix A — minimal config deltas (audit)

```apache
# /etc/httpd/conf.d/lic.example.com.conf (inside the :443 vhost)

SSLProtocol -all +TLSv1.2 +TLSv1.3
SSLOpenSSLConfCmd CipherString "DEFAULT:@SECLEVEL=1"

# ECDSA (primary)
SSLCertificateFile /etc/letsencrypt/live/lic.example.com/fullchain.pem
SSLCertificateKeyFile /etc/letsencrypt/live/lic.example.com/privkey.pem
# RSA (fallback)
SSLCertificateFile /etc/letsencrypt/live/lic.example.com-rsa/fullchain.pem
SSLCertificateKeyFile /etc/letsencrypt/live/lic.example.com-rsa/privkey.pem

LogFormat "%h %l %u %t \"%r\" %>s %b UA=\"%{User-agent}i\" TLS=%{SSL_PROTOCOL}x CIPHER=%{SSL_CIPHER}x VHOST=%v" tls_detailed
CustomLog /var/www/licensing-app/logs/access_tls.log tls_detailed
```

```conf
# /etc/logrotate.d/licensing-app

/var/www/licensing-app/logs/*.log {
    su apache apache
    daily
    rotate 14
    maxsize 25M
    compress
    delaycompress
    missingok
    notifempty
    dateext
    copytruncate
}
```

---

### Escalation notes → parent theses

1. **Interface as authored surface (κ).** Evidence for PA operating at boundaries; bind to DIOW section.
2. **Probe ethics.** LEGACY flip as **premise-validation probe**: time-boxed, consented, ledgered, rolled back; map to *as-if / if-not* and risk cadence.
3. **Dual-cert pattern.** ECDSA primary + RSA fallback as reusable **surface protocol** for heterogeneous sophistication.
4. **Minimal proof kit.** TLS-aware access log + bounded rotation as the smallest durable observability set.

---

**Commit hint**

```
feat(pilot): add pilot_001_tls_interface_adaptation (scoped vhost κ-adapter, dual certs, TLS 1.2+; probe ethics + bounded logging)
```

If you want reusable **definition cards** for Diff / Sophistication / DS to drop across the repo, say the word and I’ll draft them as tiny include-ready blocks.
