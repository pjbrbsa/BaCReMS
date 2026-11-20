# CRUD Map: BaCReMS

| Table | C | R | U | D | Pages | Who |
|-------|---|---|---|---|-------|-----|
| resident | ✓ | ✓ | ✓ | – | resident-list, resident-form | Staff: C, R, U · Resident: R own record. Never deleted, because requests depend on it. |
| certificate_type | ✓ | ✓ | ✓ | – | certificate-types (list + form in one page) | Staff: C, R, U · Resident: R. Not deleted, because requests depend on it. |
| barangay_staff | ✓ | ✓ | ✓ | – | staff-list, staff-form | Staff: C, R, U. Not deleted, because requests keep a record of who handled them. |
| certificate_request | ✓ | ✓ | ✓ | ✓ | request-list, request-form, request-view | Staff: C, R, U (status), D Pending only · Resident: R own. Approved requests are kept as a record. |
| certificate | ✓ | ✓ | – | – | certificate-view (issued from request-view) | Staff: C, R · Resident: R own. Issued certificates are official records, so they're not edited or deleted. |

## Notes
- Delete is blocked in the database (`ON DELETE RESTRICT`) for resident, certificate_type, and barangay_staff when requests exist.
- Deleting a Pending request is allowed. It has no certificate yet.
- The app has two roles: Resident and Barangay Staff. There is no login table yet, so "own" records will be handled in a later week.
