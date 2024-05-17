FROM jitesoft/sqlite:latest
COPY sql sql

# DB作成
RUN sqlite3 sqlite.db

# テーブル作成
RUN sqlite3 -init sql/init.sql sqlite.db .quit