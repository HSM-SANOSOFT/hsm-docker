import { Injectable, Logger } from '@nestjs/common';

import { DatabaseService } from '../database.service';
import * as oracledb from 'oracledb';
import { NombreTablaModel } from '../models';

@Injectable()
export class NombreTablaRepository {
  private readonly logger = new Logger();
  constructor(private readonly databaseService: DatabaseService) {}

  async create() {
    //const results = await this.databaseService.execute()
  }

  async update() {
    //const results = await this.databaseService.execute()
  }

  async delete() {
    //const results = await this.databaseService.execute()
  }

  async getOne() {
    //const results = await this.databaseService.execute()
  }

  async getMany() {
    //const results = await this.databaseService.execute()
  }
}
