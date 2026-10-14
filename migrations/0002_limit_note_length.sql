CREATE TRIGGER notes_text_max_250_insert
BEFORE INSERT ON notes
WHEN length(NEW.text) > 250
BEGIN
    SELECT RAISE(ABORT, 'note text exceeds 250 characters');
END;

CREATE TRIGGER notes_text_max_250_update
BEFORE UPDATE OF text ON notes
WHEN length(NEW.text) > 250
BEGIN
    SELECT RAISE(ABORT, 'note text exceeds 250 characters');
END;
