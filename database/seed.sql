-- Table 1. RESIDENT
INSERT INTO resident (resident_id, resident_name, birth_date, gender, zone, civil_status) VALUES
('R01', 'Marinel Rebuya',   '2005-03-04', 'Female', 'Zone 1', 'Single'),
('R02', 'Princess Barbosa', '2005-12-03', 'Female', 'Zone 4', 'Single');

-- Table 2. BARANGAY_STAFF
INSERT INTO barangay_staff (staff_id, staff_name) VALUES
('S01', 'Juan Dela Cruz');

-- Table 3. CERTIFICATE_TYPE
INSERT INTO certificate_type (certificate_type_id, certificate_name) VALUES
('CT01', 'Barangay Clearance'),
('CT02', 'Certificate of Residency'),
('CT03', 'Certificate of Indigency');

-- Table 4. CERTIFICATE_REQUEST
INSERT INTO certificate_request (request_id, resident_id, certificate_type_id, staff_id, request_date, purpose_of_request, request_status) VALUES
('REQ01', 'R01', 'CT01', 'S01', '2026-11-03', 'Job Application',         'Approved'),
('REQ02', 'R01', 'CT02', 'S01', '2026-11-10', 'Job Application',         'Pending'),
('REQ03', 'R02', 'CT03', 'S01', '2026-11-05', 'Scholarship Application', 'Approved'),
('REQ04', 'R02', 'CT01', 'S01', '2026-11-12', 'Employment',              'Approved'),
('REQ05', 'R01', 'CT03', 'S01', '2026-11-14', 'Medical Assistance',      'Pending'),
('REQ06', 'R02', 'CT02', 'S01', '2026-11-15', 'Bank Account Opening',    'Pending');

-- Table 5. CERTIFICATE
-- Only Approved requests (REQ01, REQ03, REQ04) have a certificate row.
-- REQ02, REQ05, and REQ06 are still Pending, so they have no certificate.
INSERT INTO certificate (certificate_id, request_id, issue_date) VALUES
('CERT01', 'REQ01', '2026-11-04'),
('CERT02', 'REQ03', '2026-11-06'),
('CERT03', 'REQ04', '2026-11-13');
