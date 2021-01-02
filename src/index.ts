import { ITONClientNode } from 'ton-client-node-js';


const tonClientNode: ITONClientNode = require('ton-client-node-js').TONClient;
const serversConfig = (process.env.TON_NETWORK_ADDRESS ||
    'http://localhost:8080')
    .replace(/ /gi, '').split(',');

(async function () {
    const ton = await tonClientNode.create({
        servers: serversConfig,
        log_verbose: false,
    });

    console.log(`Server version:`, ton.queries.serverInfo.version);

    let serverNow: number = await ton.serverNow();
    console.log(
        `Server time:`, serverNow, new Date(serverNow),
    );
    console.log(
        `Server time delta:`, await ton.serverTimeDelta(),
    );

})();
