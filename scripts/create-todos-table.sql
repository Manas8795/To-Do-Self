-- Create todos table for the to-do app
CREATE TABLE IF NOT EXISTS todos (
  id UUID PRIMARY KEY,
  text TEXT NOT NULL,
  completed BOOLEAN DEFAULT FALSE,
  task_date TEXT NOT NULL,
  original_date TEXT NOT NULL,
  shifted BOOLEAN DEFAULT FALSE,
  shifted_from TEXT,
  priority TEXT DEFAULT 'moderate',
  deadline_time TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Create index on created_at for efficient sorting
CREATE INDEX IF NOT EXISTS todos_created_at_idx ON todos(created_at DESC);

-- Create index on task_date for date-based queries
CREATE INDEX IF NOT EXISTS todos_task_date_idx ON todos(task_date);
