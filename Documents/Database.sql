SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (1, N'Văn Học', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (2, N'Kinh Tế', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (3, N'Tâm Lý - Kỹ Năng Sống', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (4, N'Sách Thiếu Nhi', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (5, N'Tiểu Sử - Hồi Ký', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (6, N'Sách Chuyên Ngành', NULL)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 
GO
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (1, N'NXB Trẻ', NULL)
GO
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (2, N'NXB Kim Đồng', NULL)
GO
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (3, N'NXB Thế Giới', NULL)
GO
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (4, N'NXB Văn Học', NULL)
GO
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (5, N'NXB Hội Nhà Văn', NULL)
GO
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (6, N'NXB Thanh Niên', NULL)
GO
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (7, N'NVB Đại Học Quốc Gia', NULL)
GO
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (8, N'NXB Dân Trí', NULL)
GO
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (9, N'NXB Phụ Nữ Việt Nam', NULL)
GO
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (10, N'NXB Văn Hoá - Văn Nghệ', NULL)
GO
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (1, N'Trứng Chim Cúc Cu Này Thuộc Về Ai?', 4, N'Keigo Higashino', 1, N'20.5 x 14.5 cm', 436, CAST(139000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (2, N'Cho Trận Gió Kinh Thiên', 5, N'Nguyễn Thị Thụy Vũ', 1, N'13 x 20.5 cm', 345, CAST(91000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (3, N'Nobita Và Những Pháp Sư Gió Bí Ẩn', 2, N'Fujiko F Fujio', 4, N'11.3 x 17.6 cm', 188, CAST(18000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (4, N'Hành Trang Lập Trình - Những Kỹ Năng Lập Trình Viên Chuyên Nghiệp Cần Có', 6, N'Vũ Công Tấn Tài', 6, N'13.5 x 20 cm', 300, CAST(179000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (5, N'Huấn Luyện Viên Tự Tin', 3, N'Dr Sarah Jan Arnold', 3, N'17 x 13 cm', 122, CAST(69000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (6, N'Những Tọa Độ Song Song', 3, N'Nguyễn Mai Chi', 1, N'20 x 14.5 cm', 200, CAST(109000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (7, N'Tiếp Thị Giáo Dục 4.0', 7, N'Lê Phát Minh', 2, N'24 x 16 cm', 280, CAST(239000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (8, N'Tuyển Đúng Dùng Hay - Nghệ Thuật Quản Trị Nguồn Nhân Lực', 8, N'Bùi Xuân Phong', 2, N'24 x 16 cm', 348, CAST(179000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (9, N'Xu Hướng Mới Dạy Tiếng Anh Cho Trẻ Mầm Non Và Tiểu Học', 9, N'	Nguyễn Quốc Hùng, MA', 6, N'24 x 17 cm', 120, CAST(49000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (10, N'Người Bà Tài Giỏi Vùng Saga', 6, N'Yoshichi Shimada', 5, N'18.5 x 13 cm', 216, CAST(128000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (11, N'Cuốn Sách Của Nàng Thơ', 10, N'Nicky Khánh Ngọc', 5, N'18 x 11 cm', 168, CAST(159000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (12, N'Chuyện Con Mèo Dạy Hải Âu Bay', 5, N'Luis Sepúlveda', 4, N'14 x 20.5 cm', 144, CAST(49000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (13, N'Phép Màu Để Trở Thành Chính Mình', 9, N'Nhan Húc Quân', 3, N'13 x 20.5 cm', 280, CAST(99000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (14, N'Dám Yêu Dám Gánh Vác', 6, N'Lý Ái Linh', 3, N'20.5 x 14.5 cm', 336, CAST(119000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (15, N'Hệ Thống Ngân Hàng Hoa Kỳ', 3, N'Center For Financial Training', 2, N'24 x 17 cm', 458, CAST(390000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (16, N'Dế Mèn Phiêu Lưu Ký', 2, N'Tô Hoài', 4, N'19 x 13 cm', 178, CAST(49000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (17, N'Trump - Đừng Bao Giờ Bỏ Cuộc', 1, N'Donald J.Trump & Meredith Mclver', 5, N'13 x 20.5 cm', 216, CAST(165000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (18, N'Tự Học 2000 Từ Vựng Tiếng Anh Theo Chủ Đề', 7, N'The Windy', 6, N'14.5 x 9.5 cm', 260, CAST(65000.00 AS Decimal(18, 2)), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (1, N'hanh-trang-lap-trinh.jfif', 4)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (2, N'hanh-trang-lap-trinh-2.jfif', 4)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (3, N'hanh-trang-lap-trinh-3.jfif', 4)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (4, N'huan-luyen-vien-tu-tin.jpg', 5)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (5, N'huan-luyen-vien-tu-tin-2.jpg', 5)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (6, N'nhung-toa-do-song-song.jpg', 6)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (8, N'tiep-thi-giao-duc-4-0.jpg', 7)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (9, N'tuyen-dung-dung-hay.jpg', 8)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (10, N'xu-huong-moi-day-tieng-anh-cho-tre-mam-non-va-tieu-hoc.jpg', 9)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (11, N'trung-chim-cuc-cu-nay-thuoc-ve-ai.jpg', 1)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (12, N'cho-tran-gio-kinh-thien.jpg', 2)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (13, N'nobita-va-nhung-phap-su-gio-bi-an.jpg', 3)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (14, N'nguoi-ba-tai-gioi-vung-saga.jpg', 10)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (15, N'nguoi-ba-tai-gioi-vung-saga-2.jpg', 10)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (17, N'cuon-sach-cua-nang-tho.jpg', 11)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (18, N'cuon-sach-cua-nang-tho-2.jpg', 11)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (19, N'cuon-sach-cua-nang-tho-3.jpg', 11)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (20, N'truyen-con-meo-day-hai-au-bay.jpg', 12)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (21, N'truyen-con-meo-day-hai-au-bay-2.jpg', 12)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (22, N'truyen-con-meo-day-hai-au-bay-3.jpg', 12)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (23, N'trung-chim-cuc-cu-nay-thuoc-ve-ai-2.jpg', 1)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (24, N'trung-chim-cuc-cu-nay-thuoc-ve-ai-3.jpg', 1)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (25, N'nobita-va-nhung-phap-su-gio-bi-an-2.jpg', 3)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (26, N'phep-mau-de-tro-thanh-chinh-minh.jfif', 13)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (27, N'phep-mau-de-tro-thanh-chinh-minh-2.jfif', 13)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (28, N'phep-mau-de-tro-thanh-chinh-minh-3.jfif', 13)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (29, N'dam-yeu-dam-ganh-vac.jpg', 14)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (30, N'dam-yeu-dam-ganh-vac-2.jpg', 14)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (31, N'dam-yeu-dam-ganh-vac-3.jpg', 14)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (32, N'he-thong-ngan-hang-hoa-ky.png', 15)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (33, N'he-thong-ngan-hang-hoa-ky-2.jpg', 15)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (34, N'de-men-phieu-luu-ky.jpg', 16)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (35, N'de-men-phieu-luu-ky-2.jfif', 16)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (36, N'de-men-phieu-luu-ky-3.jfif', 16)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (37, N'trump-dung-bao-gio-bo-cuoc.jfif', 17)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (38, N'trump-dung-bao-gio-bo-cuoc-2.jfif', 17)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (39, N'trump-dung-bao-gio-bo-cuoc-3.jfif', 17)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (40, N'tu-hoc-2000-tu-vung-tieng-anh-theo-chu-de.jpg', 18)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (41, N'tu-hoc-2000-tu-vung-tieng-anh-theo-chu-de-2.jpg', 18)
GO
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (42, N'tu-hoc-2000-tu-vung-tieng-anh-theo-chu-de-3.jpg', 18)
GO
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO