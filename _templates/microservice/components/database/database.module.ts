import { Module } from '@nestjs/common';

import { databaseProviders } from './database.provider';
import { DatabaseService } from './database.service';
import * as TablesServices from './services';

@Module({
  providers: [
    ...databaseProviders,
    DatabaseService,
    ...Object.values(TablesServices),
  ],
  exports: [DatabaseService, ...Object.values(TablesServices)],
})
export class DatabaseModule {}
