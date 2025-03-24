import { Injectable } from '@nestjs/common';

import { NombreTablaService } from './services';

@Injectable()
export class DatabaseRepositories {
  constructor(public nombreTablaService: NombreTablaService) {}
}
