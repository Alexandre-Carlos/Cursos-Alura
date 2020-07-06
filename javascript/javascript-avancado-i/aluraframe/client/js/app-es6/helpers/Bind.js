import {ProxyFactory} from '../services/ProxyFactory';

export class Bind {

    constructor(model, view, ...props){ //... rest operator gera um array com N paramatros, só pode ser utilizado no ultimo paramentro.
        let proxy = ProxyFactory.create(model, props, (model) => 
        view.update(model));
        
        view.update(model);
        
        return proxy;
    }
}