SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN reservations ON property_id = properties.id
JOIN users ON users.id = reservations.guest_id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE users.id = 1
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;
