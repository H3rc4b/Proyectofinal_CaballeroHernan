var pool = require('./bd');
/*sirve par listar los productos*/
async function getproductos() {
  var query = 'select * from productos ';
  var rows = await pool.query(query);
  return rows;
}
/* para borrar un productos by id */ 
async function deleteproductobyid(id) {
  var query = 'delete from productos where id = ? ';
  var rows = await pool.query(query, [id]);
  return rows;
}
/*para crear un producto*/
async function insertproducto(obj) {
  try{
  var query = 'insert into productos set  ? ';
  var rows = await pool.query(query, [obj]);
  return rows;

} catch (error) {
  console.log(error);
  throw error;
}
}

//para modificar productos
async function getproductosbyid(id) {
  var query = 'select * from productos where id=?';
  var rows = await pool.query(query, [id]);
  return rows[0];
}
async function modificarproductobyid(obj, id) {
  try{
  var query = 'update productos set ? where id=?';
  var rows = await pool.query(query, [obj, id]);
  return rows;
  } catch (error) {
    throw error;
  }
} //cierra modificar
// para buscar en productos
async function buscarproductos(busqueda) {
 var query = 'select * from productos where titulo like ? or cuerpo like ?';
 var rows = await pool.query(query, ['%' + busqueda + '%', '%' + busqueda + '%', '%' + busqueda + '%']);
 return rows;
}

module.exports = { getproductos, deleteproductobyid, insertproducto, getproductosbyid, modificarproductobyid, buscarproductos }