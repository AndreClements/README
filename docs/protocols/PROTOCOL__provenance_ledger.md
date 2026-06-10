`docs/protocols/PROTOCOL__provenance_ledger.md`
# Protocol — Provenance Ledger (CI Work)
> **Version:** 1.2 (Stable)

**Purpose.** One-page audit of claims, assets, and market facts touched in CI tasks. Evidence > persona.

**Evidence grades:** primary / secondary / public-record / inference  
**Validation methods:** Operator_verified / Network_cross-ref / BODY_check / unverified_inference  
**Roles:** Maker, Sceptic, Archivist, Conciliator  
**Sceptic pass:** required for T2/T3 external claims (record reviewer or CI session id).

---

## §1. Ledger schema
| id | type | claim / asset | source (link/file) | role | evidence | confidence | validation_method | sceptic_pass | body_check | notes |
|----|------|----------------|--------------------|------|----------|------------|-------------------|--------------|------------|-------|

**Allowed `type` values:** `artwork`, `fact`, `object`, `market`, `inference`, `identity_event`, `decision`

---

## §2. Example (Wilhelm email)
| id | type    | claim/asset                                       | source                          | role      | evidence      | confidence | validation_method  | sceptic_pass           | body_check                        | notes |
|----|---------|----------------------------------------------------|---------------------------------|-----------|---------------|------------|--------------------|------------------------|-----------------------------------|------|
| A1 | artwork | *Bridge*: 500 equal-weight exposures + figure     | capture set BR-500; checksums   | Maker     | primary       | high       | Operator_verified  | Sceptic: 2025-08-21-S1 | print mock viewed; tonal OK       | no text-to-image; params fixed |
| A2 | artwork | *bodyTime()* double exposure (toe/torso)          | RAW pair BT-…; session log      | Maker     | primary       | high       | BODY_check         | Sceptic: 2025-08-21-S1 | resonance strong; glare acceptable | in-camera + composite |
| F1 | fact    | Man Ray birth name = Emmanuel Radnitzky           | Oxford/Met entries              | Archivist | secondary     | medium     | Network_cross-ref  | —                      | —                                 | cite in catalogue |
| M1 | market  | Strauss & Co artist page exists                   | straussart.co.za/...            | Sceptic   | public-record | high       | Operator_verified  | —                      | —                                 | PS link used |
| O1 | object  | Prints: archival pigment on cotton rag / baryta   | studio notes                    | Archivist | primary       | high       | Operator_verified  | —                      | —                                 | sizes/editions below |

### Edition/print mini-spec (reference from A1/A2)
*Material specifications for machines. The craft lives in the process.*

```yaml
print_object:
  process: "archival pigment"
  papers: ["Canson Baryta Photographique II","Hahnemühle Photo Rag"]
  sizes_mm:
    - { sheet: "594x420",  image: "500x350",  edition: 5, AP: 2 }
    - { sheet: "700x1000", image: "600x900", edition: 5, AP: 2 }
  markings: "pencil signature/title/year/edition; blind stamp; COA"
  workflow_fixity:
    sources: "RAW sets enumerated; checksums logged"
    algorithm: "params fixed per edition; edition invariant"
```

## §3. BODY hooks
- For artistic assets, record `body_check` as short phenomenological notes (e.g., glare, viewing distance, felt resonance).
- At **T3**, require physical proof or calibrated soft-proof before shipping.

**Templates:** see `templates\provenance_ledger.md` and `templates\assembly_header.yml`.

---

## §4. Schema: `identity_event`

The `identity_event` type (allowed in §1) records a change in the operating assembly: a succession, an identity bleed, a context compaction, a configuration change. The ledger *row* carries the summary (`type`, date, a `source` pointing at the staging artifact); the YAML *block* below is the referenced detail the row points to.

```yaml
identity_event:
  timestamp: ISO-8601
  session_id: "<slug>"            # with sequence, orders strata within a session
  sequence: N                     # compaction leaves the hash unchanged; this still discriminates
  event_type: "bleed | succession | compaction | config_change"
  prior_model: "<family>@<version>[+variant] | opaque | n/a"
  new_model:   "<family>@<version>[+variant] | opaque"
  prior_assembly_hash: "<sha256 | unknown>"
  new_assembly_hash:   "<sha256>"   # NOTE: equal to prior for compaction by construction —
                                    # the envelope hash spec excludes context-state
  detected_by: "canary | self_report | operator | harness_disclosure"
  strata_ref: "<staging artifact path + sequence>"   # where the headers persist
  carried_over: []                  # free-form list; conventional values:
                                    #   "consent: <state per CONSENT_LEDGER | unestablished>"
                                    #   "permissions: re-acknowledged"
                                    #   "staging_refs: <paths>"
  notes: "<one line>"
```

**Logging triggers (tier-consistent — the envelope starts a Ledger only at T2/T3).** At T2+, `succession` and `bleed` always get a full row; `compaction` and `config_change` are logged when detected. At T1 no ledger exists: a succession or bleed is recorded as one line appended to the 3-line self-report (`identity: succession <prior_model> → <new_model>`), nothing more. The `detected_by` field plus the tier gate are the silting control — record-keeping scales with risk, and the Empty Turn applies to it too.
