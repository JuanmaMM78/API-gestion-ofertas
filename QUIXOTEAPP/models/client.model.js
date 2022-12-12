const { executeQuery, executeQueryOne} = require('../helpers/utils');

const getAll = () => {
    return executeQuery('select * from clients');
}

const getAllActive = (active) => {
    return executeQuery('select * from clients where status = ?', [active]);
}

const getBuyersBest = () => {
    return executeQuery('select Clients.* , sum(round((Orders.price_sale * Orders.vol_sale),2)) AS vol_price_sale FROM Orders INNER JOIN Clients ON Clients.id_client = Orders.id_Client WHERE Orders.status ="aceptado" GROUP BY Clients.name_client ORDER BY vol_price_sale desc')
}

const getById = (clienteId) => {
    return executeQueryOne('select * from clients where id_client = ?', [clienteId]);
}

const create = ({ name_client, mail_client, direction, phone, status }) => {
    return executeQuery(' insert into clients (name_client, mail_client, direction, phone,status) values (?,?,?,?,?)',[name_client, mail_client, direction, phone,status]);
}

const upDate = (clientId, { name_client, mail_client, direction, phone,status }) => {
    return executeQuery('UPDATE clients SET name_client = ?, mail_client = ?, direction = ?, phone = ?, status = ? WHERE id_client = ?', [name_client, mail_client, direction, phone,status, clientId]);
}

module.exports = {
    getAll, create, upDate, getById, getAllActive, getBuyersBest
}
