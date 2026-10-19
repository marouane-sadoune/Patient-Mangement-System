
-- Ensure the patient table exists
CREATE TABLE IF NOT EXISTS patient
(
    id              UUID PRIMARY KEY,
    name            VARCHAR(255)        NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    address         VARCHAR(255)        NOT NULL,
    date_of_birth   DATE                NOT NULL,
    registered_date DATE                NOT NULL
    );

-- 1. Youssef El Amrani - Oujda
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174000',
       'Youssef El Amrani',
       'youssef.elamrani@example.com',
       '12 Rue Mohammed V, Oujda, Maroc',
       '1985-06-15', '2024-01-10'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174000');

-- 2. Salma Benali - Casablanca
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174001',
       'Salma Benali',
       'salma.benali@example.com',
       '45 Boulevard Zerktouni, Casablanca, Maroc',
       '1990-09-23', '2023-12-01'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174001');

-- 3. Hamza Alaoui - Rabat
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174002',
       'Hamza Alaoui',
       'hamza.alaoui@example.com',
       '8 Avenue Fal Ould Oumeir, Rabat, Maroc',
       '1978-03-12', '2022-06-20'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174002');

-- 4. Imane Berrada - Fes
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174003',
       'Imane Berrada',
       'imane.berrada@example.com',
       '23 Avenue Hassan II, Fès, Maroc',
       '1982-11-30', '2023-05-14'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174003');

-- 5. Mehdi Tazi - Marrakech
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174004',
       'Mehdi Tazi',
       'mehdi.tazi@example.com',
       '17 Rue de la Liberté, Guéliz, Marrakech, Maroc',
       '1995-02-05', '2024-03-01'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174004');

-- 6. Sara Idrissi - Tanger
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174005',
       'Sara Idrissi',
       'sara.idrissi@example.com',
       '6 Avenue Mohammed VI, Tanger, Maroc',
       '1988-07-25', '2024-02-15'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174005');

-- 7. Anas Chraibi - Agadir
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174006',
       'Anas Chraibi',
       'anas.chraibi@example.com',
       '31 Avenue des FAR, Agadir, Maroc',
       '1992-04-18', '2023-08-25'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174006');

-- 8. Nadia Ouazzani - Meknes
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174007',
       'Nadia Ouazzani',
       'nadia.ouazzani@example.com',
       '14 Rue Moulay Ismail, Meknès, Maroc',
       '1975-01-11', '2022-10-10'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174007');

-- 9. Othmane Fassi - Kenitra
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174008',
       'Othmane Fassi',
       'othmane.fassi@example.com',
       '52 Avenue Mohammed Diouri, Kénitra, Maroc',
       '1989-09-02', '2024-04-20'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174008');

-- 10. Ghita Mansouri - El Jadida
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174009',
       'Ghita Mansouri',
       'ghita.mansouri@example.com',
       '9 Avenue des Nations Unies, El Jadida, Maroc',
       '1993-11-15', '2023-06-30'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174009');

-- 11. Ayoub Lahlou - Tétouan
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174010',
       'Ayoub Lahlou',
       'ayoub.lahlou@example.com',
       '20 Avenue des FAR, Tétouan, Maroc',
       '1980-08-09', '2023-01-22'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174010');

-- 12. Meryem Bennani - Oujda
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174011',
       'Meryem Bennani',
       'meryem.bennani@example.com',
       '7 Rue Ziri Ibn Attia, Oujda, Maroc',
       '1984-05-03', '2024-05-12'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174011');

-- 13. Rachid Lamrani - Beni Mellal
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174012',
       'Rachid Lamrani',
       'rachid.lamrani@example.com',
       '15 Boulevard Hassan II, Béni Mellal, Maroc',
       '1991-12-25', '2022-11-11'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174012');

-- 14. Kawtar Amrani - Safi
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174013',
       'Kawtar Amrani',
       'kawtar.amrani@example.com',
       '28 Avenue Kennedy, Safi, Maroc',
       '1976-06-08', '2023-09-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174013');

-- 15. Bilal Zahraoui - Nador
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174014',
       'Bilal Zahraoui',
       'bilal.zahraoui@example.com',
       '11 Boulevard Taouima, Nador, Maroc',
       '1987-10-17', '2024-03-29'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174014');
