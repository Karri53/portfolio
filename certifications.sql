-- Create the Certifications table with description field
CREATE TABLE IF NOT EXISTS Certifications (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  provider VARCHAR(255) NOT NULL,
  year INT NOT NULL,
  description TEXT NOT NULL
);

-- Insert certifications with descriptions
INSERT INTO Certifications (title, provider, year, description) VALUES
('Agile Project Management', 'LinkedIn Learning', 2025, 'Covers Agile frameworks like Scrum, Kanban, and Lean for tech projects.'),
('Cybersecurity Awareness', 'LinkedIn Learning', 2025, 'Explores cyber threats, best practices, and incident response strategies.'),
('Google Cloud Security Engineer', 'LinkedIn Learning', 2025, 'Covers cloud security best practices, IAM, and compliance.'),
('Project Management', 'LinkedIn Learning', 2025, 'Teaches project lifecycle, stakeholder communication, and risk management.'),
('Python for Non-Programmers', 'LinkedIn Learning', 2025, 'Teaches Python fundamentals for beginners.'),
('SQL Essential Training', 'LinkedIn Learning', 2025, 'Introduces SQL queries, data manipulation, and database design.'),
('SQL for Data Analysis', 'LinkedIn Learning', 2025, 'Explains SQL techniques for querying large datasets and performing analytics.'),
('Cybersecurity Threat Landscape', 'LinkedIn Learning', 2025, 'Analyzes modern cyber threats, attack vectors, and prevention strategies.');

-- Query all certifications ordered by the latest year
SELECT * FROM Certifications ORDER BY year DESC;

-- Search for a certification by title
SELECT * FROM Certifications WHERE title LIKE '%Python%';

-- Count certifications by provider
SELECT provider, COUNT(*) as cert_count 
FROM Certifications 
GROUP BY provider;
