import { Controller, Get, Inject } from '@nestjs/common';
import * as ms from 'src/config/services';

@Controller('auth')
export class AuthController {
  constructor(@Inject(ms.) private readonly Client) {}

  @Get('init/co')
  InitCo() {
    return 'Controller is up and running!';
  }

  @Get('init/ms')
  InitMS() {
    return this.Client.send('init', {});
  }
}
