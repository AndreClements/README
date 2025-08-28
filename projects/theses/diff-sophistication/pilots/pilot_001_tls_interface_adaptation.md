`projects\theses\diff-sophistication\pilots\pilot_001_tls_interface_adaptation.md`

### **Case Study: Diff-Sophistication at a TLS Interface**

*A practice-led pilot in hyperstrate adaptation for a maculate legacy artefact*

> ```yaml
> contract:
>   intent: "Anonymised case translating a live server migration into a validation pilot for Diff-Sophistication + Parametric Authorship, enriched with practitioner dialogue."
>   scope: ["commercial transactions", "academia"]
>   status: "complete"
>   validation: ["falsifiability_probe", "Proximity_to_intent", "AndYet_counterread"]
>   principles(applied): ["situational exceptions", "responsible efficiency", "precaution", "consentful directness"]
>   aligns: ["theses/diff-sophistication.md", "theses/parametric_authorship.md"]
>   last_updated: 2025-08-28
> ```

#### **Abstract**

A legacy, closed-source C++ desktop client (Qt5 lineage) failed to connect to a modern, hardened **EL9-class** Linux server after a licensing migration. Packet traces showed a TLS failure immediately post-ClientHello. A short, monitored **premise-validation probe** (temporary system crypto relax) proved a TLS compatibility gap and was rolled back. The durable fix was **parametric** and **scoped**: per-vhost OpenSSL security-level relaxation (`@SECLEVEL=1`) plus **dual certificates** (ECDSA primary, RSA-2048 fallback) while enforcing **TLS 1.2/1.3 only**. Endpoints returned `text/plain` blobs; TLS-aware logging with bounded rotation ensured observability. Yield was maximised without global weakenings—Diff-Sophistication’s “small, reversible, legible” posture and Parametric Authorship’s interface-first governance in a maculate context.

---

## 1) Context — maculate reality

* **Legacy client artefact.** Fixed crypto stack; long-tail Windows deployments (XP-era toolchains; CNC integrations); upgrade paths blocked by workflow and device dependencies.
* **Modern server hyperstrate.** EL9-class Linux, OpenSSL 3, Apache vhost for **`<service-domain>`**, Laravel endpoints; system crypto policy at secure default.

**Surface of contention:** TLS handshake parameters (cipher/cert/security-level), not routing or application semantics.

---

## 2) Method — falsifiability probes + peer sanity

1. **Path probe:** `tcpdump` confirms TCP 3-way handshake + data → not a network block.
2. **TLS locus:** immediate server alert/FIN after ClientHello → handshake policy mismatch.
3. **OpenSSL probes:** server negotiates TLS 1.2/1.3 with ECDSA; legacy client still fails under default policy.
4. **Peer “AndYet” checks:** Observer Node suggests RSA-2048 fallback; notes client-side TLS lib swap as a long-term option.

---

## 3) Analysis — authorship at the interface

### 3.1 **Monolithic intervention as a premise-validation probe**

* **Authored rule (temporary, monitored):** relax system-wide crypto policy **for minutes** to maximise diagnostic signal.
* **Intent & effect:** a **time-boxed diagnostic**, not a candidate fix. Client connects (“Boom.”) → hypothesis confirmed (TLS compatibility gap).
* **Governance:** immediate rollback; low public visibility + stakeholder consent documented.
* **Diff-Sophistication read:** a valuable, high-signal probe that consciously incurred **Complexity Tax** for clarity, tightly bounded by time/visibility/consent. Precaution and responsible efficiency upheld.

### 3.2 **Parametric intervention as scoped adapter (κ)**

* **Authored vhost rules (durable):**

  * `SSLProtocol -all +TLSv1.2 +TLSv1.3` (keep protocols modern).
  * `SSLOpenSSLConfCmd CipherString "DEFAULT:@SECLEVEL=1"` (lower security level **for this vhost only**).
  * **Dual certs:** ECDSA (primary) + RSA-2048 (fallback) from a **public CA**.
  * Controller returns **`text/plain`** opaque blobs (no HTML views).
* **Observed negotiation:** legacy client → TLS 1.2 with ECDHE-RSA; modern browsers → TLS 1.2/1.3 with ECDSA.
* **Parametric Authorship read:** the boundary was authored; heterogeneous actors interoperate via a local **adapter** without altering core agents. High-level policy remains intact.

---

## 4) Yield ideogram

Let `Y = F · I · C`, with `F` = functionality (0/1), `I` = hyperstrate integrity \[0,1], `C` = stakeholder consent \[0,1].

* **Broken:** `F=0, I≈0.9, C=1 → Y=0`
* **Probe (temporary relax):** `F=1, I≈0.3, C≈low (diagnostic-only) → Y≈small`
* **Scoped fix:** `F=1, I≈0.95, C=1 → Y≈0.95`

The parametric, scoped adapter maximises yield without paying unacceptable integrity costs.

---

## 5) Observability & bounds

* **TLS-aware access log:** protocol/cipher/vhost recorded for each request.
* **Rotation & caps:** daily rotation, compression, `maxsize 25M`, `rotate 14`, `su` to web user; no manual babysitting.
* **Sanity hooks:** config lint before reloads; OpenSSL probe for regression; packet sampling for edge cases.

---

## 6) Dialogue (anonymised → constraints)

* **Observer Node (ON):** “RSA-2048 fallback is fine; client-side TLS lib swap is a long-term option.”
* **Application Owner (AO):** accepts short downtime to avoid global downgrade; later: “All good?”
* **Infra Maintainer (IM):** “Stable, least-change fix: TLS 1.2 + RSA fallback, scoped to vhost, bounded logs.”

---

## 7) Binding to the frameworks

* **Diff-Sophistication.** Heterogeneous sophistication is reconciled at a **surface protocol**. High yield, minimal churn; guardrails (precaution, consent, non-weaponisation) intact.
* **Parametric Authorship.** The **Parametric Author Function** acts on the **interface**; global invariants hold (secure default elsewhere). Designed transition: cipher family varies by client. Dialogue + logs together serve as a small ledger/linter.

---

## 8) Risks & mitigations (final state)

* **Per-vhost `SECLEVEL=1`.** Wider admissible ciphers **only** on `<service-domain>`. Mitigation: TLS 1.2/1.3 enforced; dual-cert posture; telemetry + rotation caps.
* **Potential TLS 1.1 pressure.** Policy disallows. If ever required, terminate on an **isolated sidecar** with IP allow-listing and audit—**not** on the main web host.

---

### Appendix A — Minimal config deltas (placeholders)

```apache
# /etc/httpd/conf.d/<service>.conf   (443 vhost)
ServerName <service-domain>

SSLProtocol -all +TLSv1.2 +TLSv1.3
SSLOpenSSLConfCmd CipherString "DEFAULT:@SECLEVEL=1"

# ECDSA (primary)
SSLCertificateFile    /etc/ssl/<service>/ecdsa/fullchain.pem
SSLCertificateKeyFile /etc/ssl/<service>/ecdsa/privkey.pem
# RSA (fallback)
SSLCertificateFile    /etc/ssl/<service>/rsa/fullchain.pem
SSLCertificateKeyFile /etc/ssl/<service>/rsa/privkey.pem

# TLS-aware access log
LogFormat "%h %l %u %t \"%r\" %>s %b UA=\"%{User-Agent}i\" TLS=%{SSL_PROTOCOL}x CIPHER=%{SSL_CIPHER}x VHOST=%v" tls_detailed
CustomLog /srv/<service>/logs/access_tls.log tls_detailed
```

```conf
# /etc/logrotate.d/<service>-tls
/srv/<service>/logs/*.log {
    su webuser webgroup
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

### Redaction legend

* **`<service-domain>`** = public hostname used by the client.
* **IM** = Infrastructure Maintainer; **AO** = Application Owner; **ON** = Observer Node.
* **EL9-class / public CA** = genericised stack labels.
* Paths, IPs, dates, UA strings: placeholders retained or omitted by design.

### Changelog

* **2025-08-28:** anonymised; unified placeholders; clarified “LEGACY as probe”; standardised logs/rotation; dual-cert posture with vendor-agnostic wording.

