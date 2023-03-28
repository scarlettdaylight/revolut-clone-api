## The API of Revolut clone :star

This is the Repo where all the backend logic lives! It required `PostgreSQL` and `pnpm` to run. Before cloning the repo, please make sure you have PostgreSQL ready.

### To download and install PostgreSQL:
1. Install [PostgreSQL](https://www.postgresql.org/download/) locally by following the instruction shown in the installer
2. Start the application and run a local server. You should now have a locally running PostgreSQL!

### To run prisma locally:
1. `git clone` and `pnpm install`
2. Run `pnpm migrate:local` to initialize your local db. You can then run `pnpm seed` to seed the db with pre-set data
3. Ta-da! your local db is now ready to use
4. You can use your choice of GUI to access your db. Either the default explorer in intelliJ or [pgAdmin](https://www.pgadmin.org/) would do