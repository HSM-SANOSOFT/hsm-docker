import { Injectable, Logger } from '@nestjs/common';

import { DatabaseService } from '../database.service';

@Injectable()
export class NombreTablaService {
  private readonly logger = new Logger();
  constructor(private readonly databaseService: DatabaseService) {}

  async create() {}

  async update() {}

  async delete() {}

  async getOne() {}

  async getMany() {}
}
