# Susan Bryant: September 2026 Sales vs. Commissions Reconciliation

**Prepared:** October 6, 2026
**Rep:** Susan Bryant (CERM rep `100013`, keyword `SB`)
**Files compared:**
- `Copy of September 2026 Sales - Susan Bryant.xls` (the sales report)
- `Copy of September 2026-SB CommissionsReport.xlsx` (the "Brandmark Commissions Report")
- CERM posted sales invoice history (`hafgfk__` headers, `hafgfl__` lines), plus the unposted queue (`wafgfk__`)

## Summary

The commissions report agrees with CERM to the penny. The sales report is **$2,821.90 higher**, and two items explain all of it:

| Source | September 2026 total |
|---|---|
| Sales report: Territory tabs (Territory Alpha, Largest_Customers, IncreasesAndDecreases) | $184,332.84 |
| Sales report: LabelSales tab | $181,530.94 |
| Commissions report | **$181,510.94** |
| CERM commissionable invoice lines (87 invoices, 122 lines) | **$181,510.94** |
| CERM all invoice lines, excluding freight | $181,530.94 |

| Customer | Sales report | Commissions report | Difference | Cause |
|---|---|---|---|---|
| Major Graphics LLC (68182) | $2,801.90 | $0.00 | $2,801.90 | Not a CERM sale in September |
| TTI Consumer Power Tools (807821) | $440.31 | $420.31 | $20.00 | Plate charge flagged non-commissionable in CERM |
| All other 17 customers | $181,090.63 | $181,090.63 | $0.00 | |
| **Total** | **$184,332.84** | **$181,510.94** | **$2,821.90** | |

## Difference 1: Major Graphics LLC, $2,801.90

- CERM has **no September 2026 invoice** for Major Graphics, posted or pending. The most recent CERM invoice is 80-122278 on 7/14/2026 ($1,246.87). The active CERM account is `106561` (keyword MAJO01), assigned to Susan.
- The sales report's own **LabelSales tab shows $0** for Major Graphics in September. The $2,801.90 appears only on the Territory tabs.
- Major Graphics is the **only customer with "Continuous" sales** on the report ($12,077.90 YTD, compared with $5,513.30 in labels). This points to a non-label sale billed outside CERM. The commissions report is built from CERM, so it can't see this sale.
- Major Graphics' YTD 2026 total ($20,805.49) is also $3,214.29 more than its product-line columns add up to, so part of its sales isn't assigned to any product line on the report.
- **Commission at stake:** $84.06 at 3% (Repeat) or $168.11 at 6% (New).

## Difference 2: TTI Consumer Power Tools, $20.00

Invoice **80-122848** (9/3/2026, CERM customer `107318`):

| Line | Description | Amount | Commissionable in CERM? | Sales report | Commissions report |
|---|---|---|---|---|---|
| 3 | PSBDD02KSB Shipmark Labels | $148.53 | Yes | Included | Included (New, 6%) |
| 4 | PBP003 Shipmark Labels | $148.53 | Yes | Included | Included (New, 6%) |
| 6 | Spot Color Plate/Copy Change | $20.00 | **No** (`comm_mog = 'N'`) | **Included** | **Excluded** |
| 7 | Shipping / Freight | $16.05 | No | Excluded | Excluded |

- The sales report counts the plate charge. The commissions report follows the CERM flag and leaves it out.
- This was the only non-freight, non-commissionable line on any of Susan's September invoices.
- **Commission at stake:** $1.20 at 6%.

## What checked out

- All 87 invoices and 122 lines on the commissions report exist in CERM with matching amounts. No commissionable CERM line is missing from the report.
- Every commission is exactly 3% for Repeat or 6% for New. There are no rate errors and no duplicate lines.
- Freight ($1,203.87 across September) is left out of both reports, so it isn't causing any difference.
- No credit memos were issued to Susan's customers in September.
- Total commission on the report: **$5,466.68**.

## Other items worth reviewing

**New vs. Repeat classification.** Invoice 80-123100 is marked **New (6%)**, while 80-123101 and 80-123102 are marked **Repeat (3%)**. All three are for the same product (102779 / OWTI01-705, "941000001 4 x 6 Blank Labels"), to the same customer, and from orders placed the same day (9/23/2026). Comparing every September "New" line against CERM history suggests that "New" means *the first time a product is invoiced to that specific CERM customer account*:

| Product | Customer | First CERM invoice | Marked |
|---|---|---|---|
| 105484 / 105485 (Shipmark labels) | TTI Consumer Power Tools | 80-122848, 9/3/2026 | New |
| 105439 (PESC Peach Tag) | ZF Group NAO | 80-122998, 9/17/2026 | New |
| 102779 (OWTI01-705) | TTI Consumer Power Tools | 80-123100, 9/25/2026 | New |

TTI Consumer Power Tools had never been invoiced for product 102779. However, sister account TTI Power Equipment Manufacturing has bought it on **51 invoices since July 2022**, and TTI Outdoor Power Equipment on 9 more. The effect here is only $0.65, but under this rule a long-running product can be paid at the "New" rate whenever it moves to a related account.

**Unposted TFT Global invoices.** Two TFT Global invoices dated 2/24/2025 are still in CERM's unposted invoice queue (`wafgfk__`) and never reached posted history:

| Invoice | Date | Amount (ex. tax) |
|---|---|---|
| 117632 | 2/24/2025 | $423.63 |
| 117633 | 2/24/2025 | $350.57 |

This is outside September, but if these were real sales, they were never posted and Susan was never paid commission on them.

## Open questions

1. **Major Graphics:** Is Susan supposed to be paid commission on Major Graphics' non-label (Continuous) sales? If so, which system is that sale billed in, and how is the commission calculated there?
2. **Plate / copy-change charges:** Are these meant to be non-commissionable, as CERM flags them? If so, should the sales report also leave them out so the two reports agree?
3. **New vs. Repeat:** Should "New" be decided per customer account or per customer group (for example, all TTI accounts sharing the OWTI01 keyword)?
4. **TFT Global 117632 / 117633:** Were these invoices voided, or do they still need to be posted?

## Method notes

- Both spreadsheets identify customers by what look like GP account numbers (e.g. 94711, 60174), not CERM customer IDs, so customers were matched to CERM by name.
- Invoice numbers on the commissions report (e.g. `80-122802`) are the CERM `dossier_` (80) followed by `fak__ref` (122802).
- CERM's own commission table (`hafgfc__`) was checked but isn't the source of this report. It has only sparse entries for Susan.

### Queries used

Commissionable vs. non-commissionable totals for Susan's September invoices:

```sql
SELECT COUNT(DISTINCT k.fak__ref) AS invoices,
       SUM(CASE WHEN l.comm_mog = 'Y' THEN l.texcl_bm ELSE 0 END) AS commissionable,
       SUM(CASE WHEN l.comm_mog <> 'Y' AND l.prys_srt <> '2' THEN l.texcl_bm ELSE 0 END) AS noncomm_nonfreight,
       SUM(CASE WHEN l.prys_srt = '2' THEN l.texcl_bm ELSE 0 END) AS freight
FROM hafgfk__ k
JOIN klabas__ c ON c.kla__ref = k.kla__ref
JOIN hafgfl__ l ON l.dgbk_ref = k.dgbk_ref AND l.bkj__ref = k.bkj__ref AND l.fak__ref = k.fak__ref
WHERE k.dok__dat >= '2026-09-01' AND k.dok__dat < '2026-10-01'
  AND c.vrt__ref = '100013'
```

First invoice date of a product per customer (used for the New/Repeat check):

```sql
SELECT l.afg__ref, k.kla__ref, RTRIM(c.naam____) AS customer,
       COUNT(DISTINCT k.fak__ref) AS invoices,
       MIN(k.dok__dat) AS first_invoice, MAX(k.dok__dat) AS last_invoice
FROM hafgfl__ l
JOIN hafgfk__ k ON k.dgbk_ref = l.dgbk_ref AND k.bkj__ref = l.bkj__ref AND k.fak__ref = l.fak__ref
JOIN klabas__ c ON c.kla__ref = k.kla__ref
WHERE l.afg__ref = '102779'
GROUP BY l.afg__ref, k.kla__ref, c.naam____
ORDER BY first_invoice
```
