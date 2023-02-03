
--2. Viết các câu lệnh để tạo các bảng như thiết kế câu 1
-- 3. Viết các câu lệnh để thêm dữ liệu vào các bảng
--Cho vào hai dữ liệu tưng tự như bảng đề bài trên
 insert  products(name,desccribe,unit,price,amount) 
values
('SSs21untra','DTDH','chiec','120',100),
('IP13pro','DTDH','chiec','130',100),
('IP12pro','DTDH','chiec','120',100);
select * from products;
--4. Viết các câu lênh truy vấn để
--a) Hiển thị tất cả các hãng sản xuất.
--b) Hiển thị tất cả các sản phẩm.
select count(*) as HangSanXuat from products;
select name as tensanpham from products;
--5. Viết các câu lệnh truy vấn để
--a) Liệt kê danh sách hãng theo thứ thự ngược với alphabet của tên.
--b) Liệt kê danh sách sản phẩm của cửa hàng theo thứ thự giá giảm dần.--c) Hiển thị thông tin của hãng Asus.
--d) Liệt kê danh sách sản phẩm còn ít hơn 11 chiếc trong kho--e) Liệt kê danh sách sản phẩm của hãng Asus
select * from products order by price desc;
select amount as soluong from products order by price desc;
select desccribe as thongtinsanphan from products;
select id,name,desccribe,amount from products where amount <11;
select name as sanpham from products ;
 --6. Viết các câu lệnh truy vấn để lấy
--a) Số hãng sản phẩm mà cửa hàng có.
--b) Số mặt hàng mà cửa hàng bán.
--c) Tổng số loại sản phẩm của mỗi hãng có trong cửa hàng.
--d) Tổng số đầu sản phẩm của toàn cửa hàng
select id,name,desccribe,amount as sanphamcuhangcon from products where amount >11;
select id, name as sanphamban from products ;
select sum(amount) from products; 