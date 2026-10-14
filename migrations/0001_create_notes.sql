CREATE TABLE notes (
    id TEXT PRIMARY KEY NOT NULL,
    text TEXT NOT NULL CHECK (length(text) <= 500),
    created_at TEXT NOT NULL,
    board_date TEXT NOT NULL CHECK (length(board_date) = 10)
);

CREATE INDEX notes_board_date_created_at_idx
    ON notes (board_date, created_at);
