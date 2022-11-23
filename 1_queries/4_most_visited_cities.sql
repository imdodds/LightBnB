SELECT city, COUNT(reservations.*) as total_reservations
FROM properties
JOIN reservations ON property_id = properties.id
GROUP BY city
ORDER BY COUNT(total_reservations.*) DESC;
