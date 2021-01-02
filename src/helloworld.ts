import * as core from '@tonclient/core';
import * as web from '@tonclient/lib-web';
import * as node from '@tonclient/lib-node';


console.log(
    `core:`,
    core,
);
console.log(
    `web:`,
    web,
);
console.log(
    `node:`,
    node,
);

const ton = new core.TonClient();
console.log(`ton:`, ton,);
