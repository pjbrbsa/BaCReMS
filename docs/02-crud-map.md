# CRUD Map: BaCReMS

| Table | C | R | U | D | Pages | Who |
|-------|---|---|---|---|-------|-----|
| resident | ✓ | ✓ | ✓ | – | resident-list, resident-form | Staff: C, R, U. Never deleted, because requests depend on it. |
| certificate_type | ✓ | ✓ | ✓ | – | certificate-types (list + form in one page) | Staff: C, R, U · Resident: R. Not deleted, because requests depend on it. |
| barangay_staff | ✓ | ✓ | ✓ | – | staff-list, staff-form | Staff: C, R, U. Not deleted, because requests keep a record of who handled them. |
| certificate_request | ✓ | ✓ | ✓ | ✓ | request-list, request-form, request-view | Staff: C, R, U (status), D Pending only · Resident: C, R. Approved requests are kept as a record. |
| certificate | ✓ | ✓ | – | – | certificate-view | Staff: C, R · Resident: R. Issued certificates are official records, so they're not edited or deleted. |
