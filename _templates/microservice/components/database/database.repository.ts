import { Injectable } from '@nestjs/common';

import { NombreTablaRepository } from './repositories';

@Injectable()
export class DatabaseRepository {
  constructor(public nombreTablaRepository: NombreTablaRepository) {}
}
