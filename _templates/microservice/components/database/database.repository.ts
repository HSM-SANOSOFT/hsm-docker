import { Injectable } from '@nestjs/common';

import { NombreTablaRepository } from './repository';

@Injectable()
export class DatabaseRepositories {
  constructor(public nombreTablaRepository: NombreTablaRepository) {}
}
