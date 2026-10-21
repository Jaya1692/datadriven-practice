# All at Once

*Two databases. One direction. No data left behind.*

[Pipeline Architecture · Medium · on DataDriven](https://datadriven.io/problems/all_at_once)

## How it went

| | |
|---|---|
| Solved | 2026-10-21 |
| Accepted | on the first submission |
| Hints | 2 hints |
| Concepts | Backfill Patterns, Batch Processing, Batch vs Streaming, Change Data Capture, Columnar vs Row Formats, Compression & Encoding, DAG Orchestration, Data Quality & Validation, Deduplication Strategies, Dependency Management, ELT vs ETL, File-Based Ingestion, Full vs Incremental Load, Idempotency, Pipeline Monitoring, Partitioning Strategies, Retry & Failure Handling, Schema Evolution, Small File Problem |

## The design

```mermaid
flowchart LR
    n1[("<b>Source</b><br/>mongo db")]
    n2["<b>Transform</b><br/>transform"]
    n3[("<b>Storage</b><br/>redshift")]
    n4[("<b>Storage</b><br/>s3")]
    n5("<b>Consumer</b><br/>analytics/bi")
    n1 --> n2
    n2 --> n4
    n4 --> n3
    n4 --> n5
    classDef source fill:#1B3D2E,stroke:#34D399,color:#34D399
    classDef transform fill:#1E3A5F,stroke:#5B8DEF,color:#5B8DEF
    classDef storage fill:#2A2348,stroke:#A78BFA,color:#A78BFA
    classDef consumer fill:#1E3A5F,stroke:#94A3B8,color:#94A3B8
    class n1 source
    class n2 transform
    class n3,n4 storage
    class n5 consumer
    linkStyle 0 stroke:#3B82F6
    linkStyle 1 stroke:#3B82F6
    linkStyle 2 stroke:#3B82F6
    linkStyle 3 stroke:#3B82F6
```

The whole design, with every component's settings, the connections, the zones and where each sits on the canvas, is in [`architecture.json`](./architecture.json).
