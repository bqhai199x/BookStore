SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (1, N'Văn Học', NULL)

INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (2, N'Kinh Tế', NULL)

INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (3, N'Tâm Lý - Kỹ Năng Sống', NULL)

INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (4, N'Sách Thiếu Nhi', NULL)

INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (5, N'Tiểu Sử - Hồi Ký', NULL)

INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (6, N'Giáo Khoa - Tham Khảo', NULL)

SET IDENTITY_INSERT [dbo].[Category] OFF

SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (1, N'NXB Trẻ', NULL)

INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (2, N'NXB Kim Đồng', NULL)

INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (3, N'NXB Thế Giới', NULL)

INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (4, N'NXB Văn Học', NULL)

INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (5, N'NXB Hội Nhà Văn', NULL)

INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (6, N'NXB Thanh Niên', NULL)

INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (7, N'NVB Đại Học Sư Phạm Tp.HCM', NULL)

INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (8, N'NXB Dân Trí', NULL)

INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (9, N'NXB Phụ Nữ Việt Nam', NULL)

INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (10, N'NXB Văn Hoá - Văn Nghệ', NULL)

SET IDENTITY_INSERT [dbo].[Publisher] OFF

SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (1, N'Trứng Chim Cúc Cu Này Thuộc Về Ai?', 4, N'Keigo Higashino', 1, N'20.5 x 14.5 cm', 436, CAST(139000.00 AS Decimal(18, 2)), NULL, NULL)

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (2, N'Cho Trận Gió Kinh Thiên', 5, N'Nguyễn Thị Thụy Vũ', 1, N'13 x 20.5 cm', 345, CAST(91000.00 AS Decimal(18, 2)), NULL, NULL)

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (3, N'Nobita Và Những Pháp Sư Gió Bí Ẩn', 2, N'Fujiko F Fujio', 4, N'11.3 x 17.6 cm', 188, CAST(18000.00 AS Decimal(18, 2)), NULL, NULL)

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (4, N'Hành Trang Lập Trình - Những Kỹ Năng Lập Trình Viên Chuyên Nghiệp Cần Có', 6, N'Vũ Công Tấn Tài', 6, N'13.5 x 20 cm', 300, CAST(179000.00 AS Decimal(18, 2)), NULL, NULL)

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (5, N'Huấn Luyện Viên Tự Tin', 3, N'Dr Sarah Jan Arnold', 3, N'17 x 13 cm', 122, CAST(69000.00 AS Decimal(18, 2)), NULL, NULL)

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (6, N'Những Tọa Độ Song Song', 3, N'Nguyễn Mai Chi', 1, N'20 x 14.5 cm', 200, CAST(109000.00 AS Decimal(18, 2)), NULL, NULL)

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (7, N'Tiếp Thị Giáo Dục 4.0', 7, N'Lê Phát Minh', 2, N'24 x 16 cm', 280, CAST(199000.00 AS Decimal(18, 2)), NULL, NULL)

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (8, N'Tuyển Đúng Dùng Hay - Nghệ Thuật Quản Trị Nguồn Nhân Lực', 8, N'Bùi Xuân Phong', 2, N'24 x 16 cm', 348, CAST(180000.00 AS Decimal(18, 2)), NULL, NULL)

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (9, N'Xu Hướng Mới Dạy Tiếng Anh Cho Trẻ Mầm Non Và Tiểu Học', 9, N'	Nguyễn Quốc Hùng, MA', 6, N'24 x 17 cm', 120, CAST(50000.00 AS Decimal(18, 2)), NULL, NULL)

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (10, N'Người Bà Tài Giỏi Vùng Saga', 6, N'Yoshichi Shimada', 5, N'18.5 x 13 cm', 216, CAST(128000.00 AS Decimal(18, 2)), NULL, NULL)

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (11, N'Cuốn Sách Của Nàng Thơ', 10, N'Nicky Khánh Ngọc', 5, N'18 x 11 cm', 168, CAST(160000.00 AS Decimal(18, 2)), NULL, NULL)

INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (12, N'Chuyện Con Mèo Dạy Hải Âu Bay', 5, N'Luis Sepúlveda', 4, N'14 x 20.5 cm', 144, CAST(49000.00 AS Decimal(18, 2)), NULL, NULL)

SET IDENTITY_INSERT [dbo].[Product] OFF

SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (1, N'hanh-trang-lap-trinh.jpg', 4)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (2, N'hanh-trang-lap-trinh-2.jfif', 4)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (3, N'hanh-trang-lap-trinh-3.jfif', 4)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (4, N'huan-luyen-vien-tu-tin.jpg', 5)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (5, N'huan-luyen-vien-tu-tin-2.jpg', 5)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (6, N'nhung-toa-do-song-song.jpg', 6)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (8, N'tiep-thi-giao-duc-4-0.jpg', 7)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (9, N'tuyen-dung-dung-hay.jpg', 8)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (10, N'xu-huong-moi-day-tieng-anh-cho-tre-mam-non-va-tieu-hoc.jpg', 9)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (11, N'trung-chim-cuc-cu-nay-thuoc-ve-ai.jpg', 1)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (12, N'cho-tran-gio-kinh-thien.jpg', 2)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (13, N'nobita-va-nhung-phap-su-gio-bi-an.jpg', 3)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (14, N'nguoi-ba-tai-gioi-vung-saga.jpg', 10)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (15, N'nguoi-ba-tai-gioi-vung-saga-2.jpg', 10)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (17, N'cuon-sach-cua-nang-tho.jpg', 11)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (18, N'cuon-sach-cua-nang-tho-2.jpg', 11)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (19, N'cuon-sach-cua-nang-tho-3.jpg', 11)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (20, N'truyen-con-meo-day-hai-au-bay.jpg', 12)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (21, N'truyen-con-meo-day-hai-au-bay-2.jpg', 12)

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (22, N'truyen-con-meo-day-hai-au-bay-3.jpg', 12)

SET IDENTITY_INSERT [dbo].[ProductImage] OFF
