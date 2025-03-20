import { HttpStatus, Inject, Injectable, Logger } from '@nestjs/common';
import { RpcException } from '@nestjs/microservices';
import * as oracledb from 'oracledb';

@Injectable()
export class NombreTabla {
  private readonly logger = new Logger();
  constructor(
    @Inject('DATABASE_CONNECTION') private readonly dbPool: oracledb.Pool,
  ) {}

  async create() {
    let connection: oracledb.Connection | null = null;
    try {
      connection = await this.dbPool.getConnection();
      const results = await connection.execute(``, {}, { autoCommit: true });
      return results;
    } catch (error) {
      this.logger.error(error);
      throw new RpcException({
        statusCode: HttpStatus.INTERNAL_SERVER_ERROR,
        message: error as string,
      });
    } finally {
      if (connection) {
        try {
          await connection.close();
        } catch (error) {
          this.logger.error(error);
        }
      }
    }
  }

  async update() {
    let connection: oracledb.Connection | null = null;
    try {
      connection = await this.dbPool.getConnection();
      const results = await connection.execute(``, {}, { autoCommit: true });
      return results;
    } catch (error) {
      this.logger.error(error);
      throw new RpcException({
        statusCode: HttpStatus.INTERNAL_SERVER_ERROR,
        message: error as string,
      });
    } finally {
      if (connection) {
        try {
          await connection.close();
        } catch (error) {
          this.logger.error(error);
        }
      }
    }
  }

  async delete() {
    let connection: oracledb.Connection | null = null;
    try {
      connection = await this.dbPool.getConnection();
      const results = await connection.execute(``, {}, { autoCommit: true });
      return results;
    } catch (error) {
      this.logger.error(error);
      throw new RpcException({
        statusCode: HttpStatus.INTERNAL_SERVER_ERROR,
        message: error as string,
      });
    } finally {
      if (connection) {
        try {
          await connection.close();
        } catch (error) {
          this.logger.error(error);
        }
      }
    }
  }

  async getOne() {
    let connection: oracledb.Connection | null = null;
    try {
      connection = await this.dbPool.getConnection();
      const results = await connection.execute(``, {}, { autoCommit: true });
      return results;
    } catch (error) {
      this.logger.error(error);
      throw new RpcException({
        statusCode: HttpStatus.INTERNAL_SERVER_ERROR,
        message: error as string,
      });
    } finally {
      if (connection) {
        try {
          await connection.close();
        } catch (error) {
          this.logger.error(error);
        }
      }
    }
  }

  async getMany() {
    let connection: oracledb.Connection | null = null;
    try {
      connection = await this.dbPool.getConnection();
      const results = await connection.execute(``, {}, { autoCommit: true });
      return results;
    } catch (error) {
      this.logger.error(error);
      throw new RpcException({
        statusCode: HttpStatus.INTERNAL_SERVER_ERROR,
        message: error as string,
      });
    } finally {
      if (connection) {
        try {
          await connection.close();
        } catch (error) {
          this.logger.error(error);
        }
      }
    }
  }
}
