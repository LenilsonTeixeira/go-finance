CREATE TABLE users (
    id serial PRIMARY KEY NOT NULL,
    username VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    email VARCHAR UNIQUE NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE categories (
    id serial PRIMARY KEY NOT NULL,
    user_id INT NOT NULL,
    title  VARCHAR NOT NULL,
    type VARCHAR(50) NOT NULL,
    description VARCHAR NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE accounts (
    id serial PRIMARY KEY NOT NULL,
    user_id INT NOT NULL,
    category_id INT NOT NULL,
    title  VARCHAR NOT NULL,
    type VARCHAR(50) NOT NULL,
    description VARCHAR NOT NULL,
    value NUMERIC(10,2) NOT NULL,
    date DATE NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
)