import { Module } from '@nestjs/common';
import { ClientsModule, Transport } from '@nestjs/microservices';
import { envs } from 'src/config';
import * as ms from 'src/config/services';

import { 'cual es' } from 'ruta';

@Module({
  controllers: ['cual es'],
  providers: [],
  imports: [
    ClientsModule.register([
      {
        name: ms.,
        transport: Transport.TCP,
        options: {
          host: envs.,
          port: envs.,
        },
      },
    ]),
  ],
})
export class AuthModule {}
