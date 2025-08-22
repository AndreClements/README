`docs/protocols/protocol__provenance_ledger.md`
# Protocol — Provenance Ledger (CI Work)
> **Version:** 1.1 (Stable)

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
