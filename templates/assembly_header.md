`templates\assembly_header.md`
# Paste at top of any CI session/log
``yaml
assembly_header:
  surface: ""
  model: ""
  system_role: ""          # Maker | Sceptic | Archivist | Conciliator | Editor | Analyst | Maintainer | Dreamer | Developer | Tester | Critic
  tools: []
  retrieval: false
  operator: "André S Clements, Programmer Artist"
  session_id: ""
  tier: "T1"
  authorship_clause:
    capture_origin: ""
    generative_use: ""     # none|limited|text-to-image|image-to-image|code|meta
  facade: ""
  assembly_contract:
    spec: ["surface","model","system_role","tools","retrieval","operator","facade"]
    hash_method: "sha256"
    hash: ""
```