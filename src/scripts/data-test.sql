CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

ALTER TABLE locales
ALTER COLUMN id SET DEFAULT uuid_generate_v4();

INSERT INTO locales (name_l, direction, description, image_link, capacity)
VALUES
  ('Sexy Geishas', '123 Main St, New York, NY', 'Upscale lounge with dance music and full bar in an elegant space with VIP areas.', 'https://example.com/sexy_geishas.jpg', 250),
  ('La Colmena', '456 Park Ave, Miami, FL', 'Hip hop club with resident and guest DJs spinning latest hits. Casual atmosphere.', 'https://example.com/la_colmena.jpg', 350),
  ('Molino Rojo', '789 Beach Rd, Los Angeles, CA', 'Intimate cocktail lounge with dance floor, full bar menu and weekly DJ events.', 'https://example.com/molino_rojo.jpg', 150);