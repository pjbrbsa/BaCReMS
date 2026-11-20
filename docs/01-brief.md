# Project Brief: BaCReMS (Barangay Certificate Request Management System)

## 1. The problem
Residents need to visit the barangay hall personally to request certificates, which takes time and effort. Meanwhile, barangay officials manually record and manage requests using paper documents, making the process slower and harder to organize.

## 2. Users and what they need to do

| User role | What they need to do in the app |
|-----------|---------------------------------|
| Resident | Request a certificate, check the status of their requests |
| Barangay Staff | Register residents, review requests, approve requests, issue certificates |

## 3. The database behind it
Database name: bacrems_db

Number of tables: 5

- resident: stores each resident's name, birth date, gender, zone, and civil status.
- certificate_type: lists the certificates offered, each with a unique name.
- barangay_staff: stores the staff members who process requests.
- certificate_request: records each request with its resident, certificate type, handling staff, date, purpose, and status (Pending or Approved).
- certificate: records each issued certificate and its issue date, one per approved request.

## 4. Must-have features (for the final project)
1. Add, edit, and view resident records.
2. Submit a certificate request for a resident.
3. View the list of all certificate requests with resident and certificate type.
4. Search requests by Request ID, resident name, or status.
5. Approve a pending request.
6. Issue a certificate for an approved request.

## 5. Nice-to-have features (only if there's time)
1. Print an issued certificate.
2. Show a count of requests per certificate type.

## 6. Similar apps I looked at
- **PSA Helpline:** I'll borrow the idea of tracking a request by a reference number. Our app, the Request ID (like REQ01) serves as the reference number.
