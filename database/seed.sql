-- Table 1. RESIDENT
INSERT INTO RESIDENT (Resident_ID, Resident_Name, Birth_Date, Gender, Zone, Civil_Status) VALUES
('R01', 'Marinel Rebuya',   '2005-03-04', 'Female', 'Zone 1', 'Single'),
('R02', 'Princess Barbosa', '2005-12-03', 'Female', 'Zone 4', 'Single');

-- Table 2. BARANGAY_STAFF
INSERT INTO BARANGAY_STAFF (Staff_ID, Staff_Name) VALUES
('S01', 'Juan Dela Cruz');

-- Table 3. CERTIFICATE_TYPE
INSERT INTO CERTIFICATE_TYPE (Certificate_Type_ID, Certificate_Name) VALUES
('CT01', 'Barangay Clearance'),
('CT02', 'Certificate of Residency'),
('CT03', 'Certificate of Indigency');

-- Table 4. CERTIFICATE_REQUEST
INSERT INTO CERTIFICATE_REQUEST (Request_ID, Resident_ID, Certificate_Type_ID, Staff_ID, Request_Date, Purpose_Of_Request, Request_Status) VALUES
('REQ01', 'R01', 'CT01', 'S01', '2026-11-03', 'Job Application',         'Approved'),
('REQ02', 'R01', 'CT02', 'S01', '2026-11-10', 'Job Application',         'Pending'),
('REQ03', 'R02', 'CT03', 'S01', '2026-11-05', 'Scholarship Application', 'Approved');

-- Table 5. CERTIFICATE
-- REQ02 is still Pending, so it has no certificate row.
INSERT INTO CERTIFICATE (Certificate_ID, Request_ID, Issue_Date) VALUES
('CERT01', 'REQ01', '2026-11-04'),
('CERT02', 'REQ03', '2026-11-06');
