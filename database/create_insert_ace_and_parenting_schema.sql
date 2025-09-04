-- ===============================================================================
-- POSTGRESQL ACE AND PARENTING SCHEMA CREATION 
-- ===============================================================================
CREATE SCHEMA IF NOT EXISTS aces_and_parenting;
SET search_path TO aces_and_parenting, public;

-- ============================================================================
-- Table creation, data insert and queries for Association between maternal ACEs and children’s behavioral problems.
-- Source: "Maternal adverse childhood experiences and behavioral problems in preschool offspring: the mediation role of parenting styles"; Table 2.
-------------------------------------------------------------------------------

-- TABLE CREATION
CREATE TABLE aces_and_parenting.maternal_aces_behavioral_problems (
    id SERIAL PRIMARY KEY,
    model_type VARCHAR(20),       -- 'Crude' or 'Adjusted'
    behavioral_problem VARCHAR(50),
    ace_count VARCHAR(5),         -- '0', '1', '2', '3', '≥4'
    odds_ratio NUMERIC(5,2),
    ci_lower NUMERIC(5,2),
    ci_upper NUMERIC(5,2),
    significant BOOLEAN,
    p_value_note VARCHAR(20),     
    p_value_trend NUMERIC(6,4)    
);

-- DATA INSERT for Crude model
INSERT INTO aces_and_parenting.maternal_aces_behavioral_problems 
(model_type, behavioral_problem, ace_count, odds_ratio, ci_lower, ci_upper, significant, p_value_note, p_value_trend) VALUES
('Crude', 'Conduct problems', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Crude', 'Conduct problems', '1', 2.65, 1.48, 4.75, TRUE, 'p < 0.05', NULL),
('Crude', 'Conduct problems', '2', 3.60, 1.95, 6.64, TRUE, 'p < 0.05', NULL),
('Crude', 'Conduct problems', '3', 6.45, 3.44, 12.12, TRUE, 'p < 0.05', NULL),
('Crude', 'Conduct problems', '≥4', 8.67, 4.79, 15.68, TRUE, 'p < 0.05', 0.0001),

('Crude', 'Learning problems', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Crude', 'Learning problems', '1', 1.65, 0.98, 2.80, FALSE, NULL, NULL),
('Crude', 'Learning problems', '2', 2.84, 1.64, 4.92, TRUE, 'p < 0.05', NULL),
('Crude', 'Learning problems', '3', 4.30, 2.41, 7.69, TRUE, 'p < 0.05', NULL),
('Crude', 'Learning problems', '≥4', 5.92, 3.47, 10.10, TRUE, 'p < 0.05', 0.0001),

('Crude', 'Psychosomatic problems', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Crude', 'Psychosomatic problems', '1', 1.76, 1.07, 2.89, TRUE, 'p < 0.05', NULL),
('Crude', 'Psychosomatic problems', '2', 3.20, 1.91, 5.36, TRUE, 'p < 0.05', NULL),
('Crude', 'Psychosomatic problems', '3', 3.63, 2.06, 6.38, TRUE, 'p < 0.05', NULL),
('Crude', 'Psychosomatic problems', '≥4', 4.64, 2.77, 7.77, TRUE, 'p < 0.05', 0.0001),

('Crude', 'Impulsive-hyperactive', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Crude', 'Impulsive-hyperactive', '1', 1.56, 0.93, 2.61, FALSE, NULL, NULL),
('Crude', 'Impulsive-hyperactive', '2', 2.24, 1.29, 3.88, TRUE, 'p < 0.05', NULL),
('Crude', 'Impulsive-hyperactive', '3', 4.06, 2.29, 7.18, TRUE, 'p < 0.05', NULL),
('Crude', 'Impulsive-hyperactive', '≥4', 5.82, 3.45, 9.79, TRUE, 'p < 0.05', 0.0001),

('Crude', 'Anxiety', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Crude', 'Anxiety', '1', 2.46, 1.30, 4.64, TRUE, 'p < 0.05', NULL),
('Crude', 'Anxiety', '2', 3.16, 1.62, 6.18, TRUE, 'p < 0.05', NULL),
('Crude', 'Anxiety', '3', 6.72, 3.41, 13.25, TRUE, 'p < 0.05', NULL),
('Crude', 'Anxiety', '≥4', 7.03, 3.68, 13.45, TRUE, 'p < 0.05', 0.0001),

('Crude', 'Hyperactivity index', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Crude', 'Hyperactivity index', '1', 1.65, 1.04, 2.63, TRUE, 'p < 0.05', NULL),
('Crude', 'Hyperactivity index', '2', 2.42, 1.47, 3.97, TRUE, 'p < 0.05', NULL),
('Crude', 'Hyperactivity index', '3', 4.23, 2.52, 7.10, TRUE, 'p < 0.05', NULL),
('Crude', 'Hyperactivity index', '≥4', 5.91, 3.67, 9.50, TRUE, 'p < 0.05', 0.0001);

-- DATA INSERTfor Adjusted model
INSERT INTO aces_and_parenting.maternal_aces_behavioral_problems 
(model_type, behavioral_problem, ace_count, odds_ratio, ci_lower, ci_upper, significant, p_value_note, p_value_trend) VALUES
('Adjusted', 'Conduct problems', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Adjusted', 'Conduct problems', '1', 2.08, 1.15, 3.73, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Conduct problems', '2', 2.69, 1.45, 5.01, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Conduct problems', '3', 4.25, 2.21, 8.16, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Conduct problems', '≥4', 4.99, 2.69, 9.26, TRUE, 'p < 0.05', 0.0001),

('Adjusted', 'Learning problems', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Adjusted', 'Learning problems', '1', 1.40, 0.82, 2.38, FALSE, NULL, NULL),
('Adjusted', 'Learning problems', '2', 2.39, 1.37, 4.18, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Learning problems', '3', 3.31, 1.82, 6.00, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Learning problems', '≥4', 4.23, 2.43, 7.35, TRUE, 'p < 0.05', 0.0001),

('Adjusted', 'Psychosomatic problems', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Adjusted', 'Psychosomatic problems', '1', 1.59, 0.97, 2.63, FALSE, NULL, NULL),
('Adjusted', 'Psychosomatic problems', '2', 2.83, 1.69, 4.75, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Psychosomatic problems', '3', 2.82, 1.59, 4.99, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Psychosomatic problems', '≥4', 3.25, 1.89, 5.57, TRUE, 'p < 0.05', 0.0001),

('Adjusted', 'Impulsive-hyperactive', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Adjusted', 'Impulsive-hyperactive', '1', 1.28, 0.76, 2.16, FALSE, NULL, NULL),
('Adjusted', 'Impulsive-hyperactive', '2', 1.82, 1.04, 3.18, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Impulsive-hyperactive', '3', 2.89, 1.61, 5.20, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Impulsive-hyperactive', '≥4', 3.99, 2.32, 6.86, TRUE, 'p < 0.05', 0.0001),

('Adjusted', 'Anxiety', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Adjusted', 'Anxiety', '1', 2.01, 1.05, 3.82, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Anxiety', '2', 2.41, 1.22, 4.79, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Anxiety', '3', 4.17, 2.06, 8.44, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Anxiety', '≥4', 3.52, 1.77, 7.00, TRUE, 'p < 0.05', 0.0001),

('Adjusted', 'Hyperactivity index', '0', NULL, NULL, NULL, FALSE, NULL, NULL),
('Adjusted', 'Hyperactivity index', '1', 1.31, 0.82, 2.11, FALSE, NULL, NULL),
('Adjusted', 'Hyperactivity index', '2', 1.88, 1.13, 3.12, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Hyperactivity index', '3', 2.95, 1.72, 5.05, TRUE, 'p < 0.05', NULL),
('Adjusted', 'Hyperactivity index', '≥4', 3.71, 2.25, 6.11, TRUE, 'p < 0.05', 0.0001);

-- VERIFY DATA INTEGRITY
SELECT * FROM aces_and_parenting.maternal_aces_behavioral_problems;

-- DATA QUERY ANALYSIS
-- Query to find all significant associations in the Adjusted model where ace count ≥4(as per report results), ordered by odds ratio descending.
SELECT 
    model_type,
    behavioral_problem, 
    ace_count, 
    odds_ratio, 
    significant
FROM aces_and_parenting.maternal_aces_behavioral_problems 
WHERE significant = TRUE and model_type = 'Adjusted'
ORDER BY odds_ratio DESC;

--------------------------------------------------------------------------------
-- END of Table creation, data insert and queries for Association between maternal ACEs and children’s behavioral problems.
-- =============================================================================



-- ============================================================================
-- Table creation, data insert and queries for correlation between parental ACEs and parenting behaviours.
-- Source: "The relationship between parental adverse childhood experiences and parenting behaviors"; Table 3 & 4.
-------------------------------------------------------------------------------
-- TABLE CREATION exploring the relationship between ACEs, parental mental health, and parenting behaviors.
-- Pearson correlations matrix from Table 3.
CREATE TABLE aces_and_parenting.pearson_correlation_matrix (
    var1 TEXT NOT NULL,
    var2 TEXT NOT NULL,
    correlation NUMERIC(6,3),
    significance TEXT
);

-- DATA INSERT
INSERT INTO aces_and_parenting.pearson_correlation_matrix (var1, var2, correlation, significance) VALUES
('Parental ACEs','Depression',0.192,'Highly Significant'),
('Parental ACEs','Anxiety',0.204,'Highly Significant'),
('Parental ACEs','Stress',0.181,'Highly Significant'),
('Parental ACEs','Parental involvement',-0.087,'Not Significant'),
('Parental ACEs','Positive parenting',-0.050,'Not Significant'),
('Parental ACEs','Poor parental monitoring',0.122,'Significant'),
('Parental ACEs','Inconsistent discipline',0.120,'Significant'),
('Parental ACEs','Corporal punishment',0.153,'More Significant'),
('Parental ACEs','Parental sex (female)',-0.050,'Not Significant'),
('Parental ACEs','Age when having 1st child',0.031,'Not Significant'),

('Depression','Anxiety',0.679,'Highly Significant'),
('Depression','Stress',0.767,'Highly Significant'),
('Depression','Parental involvement',-0.085,'Not Significant'),
('Depression','Positive parenting',-0.075,'Not Significant'),
('Depression','Poor parental monitoring',0.130,'More Significant'),
('Depression','Inconsistent discipline',0.176,'Highly Significant'),
('Depression','Corporal punishment',0.027,'Not Significant'),
('Depression','Parental sex (female)',0.086,'Not Significant'),
('Depression','Age when having 1st child',-0.052,'Not Significant'),

('Anxiety','Stress',0.750,'Highly Significant'),
('Anxiety','Parental involvement',-0.077,'Not Significant'),
('Anxiety','Positive parenting',-0.056,'Not Significant'),
('Anxiety','Poor parental monitoring',0.130,'More Significant'),
('Anxiety','Inconsistent discipline',0.153,'More Significant'),
('Anxiety','Corporal punishment',0.071,'Not Significant'),
('Anxiety','Parental sex (female)',0.037,'Not Significant'),
('Anxiety','Age when having 1st child',-0.048,'Not Significant'),

('Stress','Parental involvement',-0.094,'Not Significant'),
('Stress','Positive parenting',-0.083,'Not Significant'),
('Stress','Poor parental monitoring',0.100,'Significant'),
('Stress','Inconsistent discipline',0.193,'Highly Significant'),
('Stress','Corporal punishment',0.010,'Not Significant'),
('Stress','Parental sex (female)',0.047,'Not Significant'),
('Stress','Age when having 1st child',-0.014,'Not Significant'),

('Parental involvement','Positive parenting',0.761,'Highly Significant'),
('Parental involvement','Poor parental monitoring',0.205,'Highly Significant'),
('Parental involvement','Inconsistent discipline',0.058,'Not Significant'),
('Parental involvement','Corporal punishment',-0.045,'Not Significant'),
('Parental involvement','Parental sex (female)',0.059,'Not Significant'),
('Parental involvement','Age when having 1st child',0.022,'Not Significant'),

('Positive parenting','Poor parental monitoring',0.206,'Highly Significant'),
('Positive parenting','Inconsistent discipline',0.008,'Not Significant'),
('Positive parenting','Corporal punishment',-0.078,'Not Significant'),
('Positive parenting','Parental sex (female)',0.142,'More Significant'),
('Positive parenting','Age when having 1st child',-0.047,'Not Significant'),

('Poor parental monitoring','Inconsistent discipline',0.394,'Highly Significant'),
('Poor parental monitoring','Corporal punishment',0.245,'Highly Significant'),
('Poor parental monitoring','Parental sex (female)',-0.011,'Not Significant'),
('Poor parental monitoring','Age when having 1st child',-0.135,'Significant'),

('Inconsistent discipline','Corporal punishment',0.428,'Highly Significant'),
('Inconsistent discipline','Parental sex (female)',-0.031,'Not Significant'),
('Inconsistent discipline','Age when having 1st child',0.041,'Not Significant'),

('Corporal punishment','Parental sex (female)',0.103,'Significant'),
('Corporal punishment','Age when having 1st child',0.004,'Not Significant'),

('Parental sex (female)','Age when having 1st child',-0.271,'Highly Significant');


-- VERIFY DATA INTEGRITY
select * from aces_and_parenting.pearson_correlation_matrix;

-- DATA QUERY ANALYSIS
-- Query to find all significant correlations with 'Parental ACEs'
select *
from aces_and_parenting.pearson_correlation_matrix
where var1 = 'Parental ACEs' and significance not in ('Not Significant')
order by correlation DESC;
--------------------------------------------------------------------------------

-- TABLE CREATION exploring regression paths from Table 4
-- Direct and indirect effects of parental ACEs on parenting behaviors via parental mental health
CREATE TABLE aces_and_parenting.regression_paths (
    id SERIAL PRIMARY KEY,
    source TEXT NOT NULL,        -- starting variable (e.g., ACEs)
    mediator TEXT,               -- confounder/mediator (nullable for direct paths)
    parental_behaviour TEXT NOT NULL, -- outcome parenting behaviour
    effect_type TEXT CHECK (effect_type IN ('direct','indirect')),
    beta NUMERIC(8,4),
    significance TEXT,
    p_value VARCHAR(20)
);

-- DATA INSERT
-- Direct effects
INSERT INTO aces_and_parenting.regression_paths (source, mediator, parental_behaviour, effect_type, beta, significance, p_value) VALUES
('ACEs', NULL, 'Depression', 'direct', 0.1946, 'Highly Significant', 'p<0.001'),
('Sex (Female)', NULL, 'Depression', 'direct', 0.0516, 'Not Significant', NULL),
('ACEs', NULL, 'Anxiety', 'direct', 0.2083, 'Highly Significant', 'p<0.001'),
('ACEs', NULL, 'Stress', 'direct', 0.1818, 'Highly Significant', 'p<0.001'),

('ACEs', NULL, 'Parental involvement', 'direct', -0.0694, 'Not Significant', NULL),
('Depression', NULL, 'Parental involvement', 'direct', -0.0117, 'Not Significant', NULL),
('Anxiety', NULL, 'Parental involvement', 'direct', -0.0308, 'Not Significant', NULL),
('Stress', NULL, 'Parental involvement', 'direct', -0.0651, 'Not Significant', NULL),

('ACEs', NULL, 'Positive parenting', 'direct', -0.0310, 'Not Significant', NULL),
('Depression', NULL, 'Positive parenting', 'direct', -0.0378, 'Not Significant', NULL),
('Stress', NULL, 'Positive parenting', 'direct', -0.0712, 'Not Significant', NULL),
('Sex (Female)', NULL, 'Positive parenting', 'direct', 0.1031, 'More Significant', 'p<0.01'),

('ACEs', NULL, 'Poor parental monitoring', 'direct', 0.0896, 'Not Significant', NULL),
('Depression', NULL, 'Poor parental monitoring', 'direct', 0.0909, 'Not Significant', NULL),
('Anxiety', NULL, 'Poor parental monitoring', 'direct', 0.0808, 'Not Significant', NULL),
('Stress', NULL, 'Poor parental monitoring', 'direct', -0.0349, 'Not Significant', NULL),

('ACEs', NULL, 'Inconsistent discipline', 'direct', 0.0806, 'Not Significant', NULL),
('Depression', NULL, 'Inconsistent discipline', 'direct', 0.0637, 'Not Significant', NULL),
('Anxiety', NULL, 'Inconsistent discipline', 'direct', -0.0348, 'Not Significant', NULL),
('Stress', NULL, 'Inconsistent discipline', 'direct', 0.1776, 'Significant', 'p<0.05'),

('ACEs', NULL, 'Corporal punishment', 'direct', 0.1526, 'More Significant', 'p<0.01'),
('Anxiety', NULL, 'Corporal punishment', 'direct', 0.0428, 'Not Significant', NULL),
('Sex (Female)', NULL, 'Corporal punishment', 'direct', 0.1261, 'More Significant', 'p<0.01');

-- Indirect effects
INSERT INTO aces_and_parenting.regression_paths (source, mediator, parental_behaviour, effect_type, beta, significance, p_value) VALUES
('ACEs', 'Depression', 'Parental involvement', 'indirect', -0.002, 'Not Significant', NULL),
('ACEs', 'Anxiety', 'Parental involvement', 'indirect', -0.006, 'Not Significant', NULL),
('ACEs', 'Stress', 'Parental involvement', 'indirect', -0.012, 'Not Significant', NULL),
('Sex (Female)', 'Depression', 'Parental involvement', 'indirect', -0.001, 'Not Significant', NULL),

('ACEs', 'Depression', 'Positive parenting', 'indirect', -0.007, 'Not Significant', NULL),
('ACEs', 'Stress', 'Positive parenting', 'indirect', -0.013, 'Not Significant', NULL),
('Sex (Female)', 'Depression', 'Positive parenting', 'indirect', -0.002, 'Not Significant', NULL),

('ACEs', 'Depression', 'Poor parental monitoring', 'indirect', 0.018, 'Not Significant', NULL),
('ACEs', 'Anxiety', 'Poor parental monitoring', 'indirect', 0.017, 'Not Significant', NULL),
('ACEs', 'Stress', 'Poor parental monitoring', 'indirect', -0.006, 'Not Significant', NULL),
('Sex (Female)', 'Depression', 'Poor parental monitoring', 'indirect', 0.005, 'Not Significant', NULL),

('ACEs', 'Depression', 'Inconsistent discipline', 'indirect', 0.012, 'Not Significant', NULL),
('ACEs', 'Anxiety', 'Inconsistent discipline', 'indirect', -0.007, 'Not Significant', NULL),
('ACEs', 'Stress', 'Inconsistent discipline', 'indirect', 0.032, 'Not Significant', NULL),
('Sex (Female)', 'Depression', 'Inconsistent discipline', 'indirect', 0.003, 'Not Significant', NULL),

('ACEs', 'Anxiety', 'Corporal punishment', 'indirect', 0.009, 'Not Significant', NULL);

-- VERIFY DATA INTEGRITY
select * from aces_and_parenting.regression_paths;

-- DATA QUERY ANALYSIS
-- Query to find all significant direct effects of ACEs on parenting behaviours as, ordered by beta descending
select 
    source,
    parental_behaviour,
    effect_type,
    beta,
    significance,
    p_value
from aces_and_parenting.regression_paths
where significance not in ('Not Significant') and source not in ('Sex (Female)')   
order by beta DESC;
--------------------------------------------------------------------------------
-- END of Tables creation, data insert and queries for correlation between parental ACEs and parenting behaviours.   
-- =============================================================================
