
//transformando em um modulo (unidade de codigo confinada, para que ninguem tenha acesso ao conteudo)
//declarando uma função anonima - auto invocavél 
//foi utilizado um design pattern - module pattern

//var ConnectionFactory = (function () {



const stores = ['negociacoes'];
const version = 4;
const dbName = 'aluraframe';

let connection = null;
let close = null;

export class ConnectionFactory{
    constructor() {
        throw new Error('Não é possível criar instâncias de ConnectionFactory');
    }


    static getConnection(){
        return new Promise((resolve, reject) =>{
            let openRequest = window.indexedDB.open(dbName, version);

            openRequest.onupgradeneeded = e => {
               ConnectionFactory._createStores(e.target.result);     
                
            };

            openRequest.onsuccess = e => {

                if(!connection) {
                    connection = e.target.result;

                    //guardou no metodo close antes da modificação, foi utilizado o bind para manter a associação a connection, não perdendo assim o this delaç
                    close = connection.close.bind(connection); //ou retirando o bind e colocando reflect na função closeconnection

                    //monkey patch - sobrescreve o metodo conection.close para que não possa fechar a conexão por ele
                    connection.close = function() {
                        throw new Error('Você não pode fechar diretamente a conexão');
                    };
                }
                    resolve(connection);
            };

            openRequest.onerror = e => {

                console.log(e.target.error);
                reject(e.target.error.name);

            };
        });
    };

    static _createStores(connection){
        
        stores.forEach(store => {
            if (connection.objectStoreNames.contains(store))
                connection.deleteObjectStore(store);
            
            connection.createObjectStore(store, { autoIncrement: true});
            
        });
    }

    static closeConnection() {

        if(connection) {
            close();
            //Reflect.apply(close, connection, []); ou retirando o bind e colocando reflect
            connection = null;
        }
    }




}

//})();

//ConnectionFactory.getConnection(); a conexão deve ser feita desta maneira, apenas chamando o método statico

//let cf = new ConnectionFactory(); não pode ser feito desta maneira criando uma instancia de ConnectionFactory

// criando o construtor, determina se houver algum instanciamento da connection, é retornado um erro.




 /*
        a) getConnection vai ser um método estático
        b) getConnection vai retornar uma promisse
        c) não importa o número de vezes que eu chamar o método estátio, a conexão tem que ser a mesma.
        d) o programasor não pode chamar close diretamente. Ele só pode ser fechada através da própria ConnectionFactory.
*/