-- 1. Create Tables
CREATE TABLE phishing_scenarios (
    id SERIAL PRIMARY KEY,
    subject TEXT NOT NULL,
    sender TEXT NOT NULL,
    content TEXT NOT NULL,
    is_phishing BOOLEAN NOT NULL,
    explanation TEXT NOT NULL
);

CREATE TABLE daily_facts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    fact TEXT NOT NULL
);

-- 2. Insert 10 Phishing Quiz Questions
INSERT INTO phishing_scenarios (subject, sender, content, is_phishing, explanation) VALUES
('Action Required: New Employee Policy', 'hr-notice@corp-updates.net', 'Please review the attached PDF regarding the 2026 remote work policy updates.', true, 'The domain "corp-updates.net" is not an official company domain.'),
('IT Support: Ticket #99281', 'support@company.com', 'Your requested password reset has been processed. If you did not request this, click here.', false, 'This matches the standard internal IT ticketing format and sender address.'),
('Urgent: Password Expiry', 'admin@security-helpdesk.org', 'Your Windows password expires in 2 hours. Click here to maintain access.', true, 'Artificial urgency is a classic lure used to bypass your critical thinking.'),
('Package Delivery Issue', 'no-reply@post-office.com', 'You have a package with an unpaid shipping fee of 1.99€. Pay now to avoid return.', true, 'Smishing and email lures use small amounts to lower your psychological guard.'),
('CEO Direct: Quick Task', 'ceo.office@gmail.com', 'I am in a meeting. Can you buy 5 Amazon gift cards for a client? I will reimburse you.', true, 'Business Email Compromise (BEC). Executives will never ask for gift cards via Gmail.'),
('LinkedIn: Profile View', 'notifications@linkedin.co', 'Someone viewed your profile! See who it was by clicking this link.', true, 'Check the domain carefully; "linkedin.co" is missing the "m" in ".com".'),
('Bank Alert: Suspicious Activity', 'security@yourbank-verify.com', 'Unauthorized login detected from Brazil. Click here to lock your account.', true, 'Banks never ask you to click a link to verify identity; use the official app instead.'),
('Team Lead: Morning Stand-up', 'teamlead@company.com', 'Don’t forget our sync at 10:00 AM in the main conference room.', false, 'Routine internal communication without suspicious links or attachments is generally safe.'),
('Software Update: Critical Patch', 'update@chrome-security.net', 'New security patch for Chrome. Download and run "patch.exe" immediately.', true, 'Browsers update automatically; they never send executable files via email.'),
('Tax Refund Available', 'refunds@government-tax.org', 'You are eligible for a tax refund of 450.00€. Claim your payment here.', true, 'Official government agencies use physical mail for financial matters, not email links.');

-- 3. Insert 10 "Microlearning" Facts
INSERT INTO daily_facts (title, fact) VALUES
('MFA is King', 'Enabling Multi-Factor Authentication can block up to 99% of bulk phishing attacks.'),
('Hover Technique', 'Always hover your mouse over a link to see the real destination URL before clicking.'),
('The HTTPS Myth', 'The "S" means the connection is encrypted, but it does NOT mean the website is honest.'),
('Voice Phishing (Vishing)', 'AI can now clone a voice in 3 seconds. Verify suspicious calls by calling a known number back.'),
('Typosquatting', 'Hackers register domains like "g00gle.com" instead of "google.com" to trick your eyes.'),
('Public Wi-Fi', 'Avoid accessing sensitive work data on public Wi-Fi without using a corporate VPN.'),
('Gift Card Red Flag', 'No legitimate business or agency will ever ask for payment via gift cards.'),
('File Extensions', 'Be extremely wary of files ending in .exe, .scr, or .vbs sent via email attachments.'),
('AI Phishing', 'AI now writes perfect, typo-free emails, making it harder to spot phishing through bad grammar.'),
('Reporting Culture', 'Reporting one suspicious email can protect the entire company from a breach.');