USE mavenmovies;

SELECT 
    first_name,
    last_name,

    /*
    CASE funciona como uma estrutura IF / ELSE IF / ELSE.

    O MySQL verifica cada condição WHEN de cima para baixo.
    Assim que encontra uma condição TRUE, executa o THEN
    correspondente e para de verificar as condições seguintes.

    Aqui estamos combinando DUAS condições:
        1. store_id -> em qual loja o cliente está
        2. active   -> se o cliente está ativo ou inativo

    active = 1 -> cliente ativo
    active = 0 -> cliente inativo
    */

    CASE

        /*
        Cliente pertence à Store 1
        E está ativo.
        */
        WHEN store_id = 1 AND active = 1 THEN 'Store1_active'

        /*
        Cliente pertence à Store 1
        E está inativo.
        */
        WHEN store_id = 1 AND active = 0  THEN 'Store1_inactive'

        /*
        Cliente pertence à Store 2
        E está ativo.
        */
        WHEN store_id = 2 AND active = 1  THEN 'Store2_active'

        /*
        Cliente pertence à Store 2
        E está inativo.
        */
        WHEN store_id = 2 AND active = 0  THEN 'Store2_inactive'

        /*
        ELSE é executado quando nenhuma das condições
        anteriores for TRUE.

        Neste exemplo, serve como uma espécie de
        "fallback" para detectar dados ou lógica inesperada.
        */
        ELSE 'bad..logic, check it please'

    END AS store_and_status

FROM customer;