// adapted for TypeScript by https://github.com/asnov

import { TONClient, TONConfigData } from 'ton-client-js';

export interface IClientPlatform {
  fetch: any;
  WebSocker: WebSocket;
  createLibrary: Promise<any>;
}

export interface ITONClientNode {
  setLibrary: (args: IClientPlatform) => void;
  clientPlatform: IClientPlatform;
  coreLibrary: any;

  create(config: TONConfigData): Promise<TONClient>;
}
