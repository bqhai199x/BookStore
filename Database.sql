USE [BookStoreDB]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 
GO
INSERT [dbo].[Account] ([AccountId], [Email], [Password], [ImageURL], [FirstName], [LastName], [City], [District], [Commune], [Address], [Phone], [Role], [CreatedDate]) VALUES (1, N'bqhai.199x@gmail.com', N'QE78aRCyTns=', N'avt-hai.jpg', N'Quang Hải', N'Bùi', N'ha-noi', N'dong-anh', N'dai-mach', N'Thôn Mạch Lũng', N'0976445870', 1, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Account] ([AccountId], [Email], [Password], [ImageURL], [FirstName], [LastName], [City], [District], [Commune], [Address], [Phone], [Role], [CreatedDate]) VALUES (2, N'yendu197@gmail.com', N'de1gbax0h+o=', N'avt.jpg', N'Mỹ Duyên', N'Bùi Thị', N'ha-noi', N'dong-anh', N'vong-la', N'Làng Chài', N'0907076600', 0, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Coupon] ON 
GO
INSERT [dbo].[Coupon] ([CouponId], [Code], [Discount], [StartDate], [EndDate], [Quantity], [Description]) VALUES (1, N'HETMA', CAST(0.50 AS Decimal(18, 2)), CAST(N'2021-06-21T00:00:00.000' AS DateTime), CAST(N'2021-12-31T00:00:00.000' AS DateTime), 0, NULL)
GO
INSERT [dbo].[Coupon] ([CouponId], [Code], [Discount], [StartDate], [EndDate], [Quantity], [Description]) VALUES (2, N'HETHAN', CAST(0.75 AS Decimal(18, 2)), CAST(N'2021-06-21T00:00:00.000' AS DateTime), CAST(N'2021-06-30T00:00:00.000' AS DateTime), 2, NULL)
GO
INSERT [dbo].[Coupon] ([CouponId], [Code], [Discount], [StartDate], [EndDate], [Quantity], [Description]) VALUES (3, N'MAOK', CAST(0.25 AS Decimal(18, 2)), CAST(N'2021-07-04T00:00:00.000' AS DateTime), CAST(N'2021-12-31T00:00:00.000' AS DateTime), 15, NULL)
GO
SET IDENTITY_INSERT [dbo].[Coupon] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (1, CAST(N'2021-09-01T10:41:24.633' AS DateTime), 4, N'Bùi Quang Hải', N'[Cơ quan] Thôn Mạch Lũng, Xã Đại Mạch, Huyện Đông Anh, Thành phố Hà Nội', N'0976445870', N'', 3, NULL, 1, 1)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (2, CAST(N'2021-08-30T21:34:57.060' AS DateTime), 2, N'Bùi Quang Hải', N'[Cơ quan] Thôn Mạch Lũng, Xã Đại Mạch, Huyện Đông Anh, Thành phố Hà Nội', N'0976445870', NULL, 0, NULL, NULL, 1)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (3, CAST(N'2021-09-04T13:21:09.173' AS DateTime), 1, N'Bùi Thị Mỹ Duyên', N'[Nhà riêng] Làng Chài, Xã Võng La, Huyện Đông Anh, Thành phố Hà Nội', N'0907076600', N'', 1, NULL, NULL, 2)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (4, CAST(N'2021-09-02T21:35:40.467' AS DateTime), 1, N'Bùi Quang Hải', N'[Cơ quan] Thôn Mạch Lũng, Xã Đại Mạch, Huyện Đông Anh, Thành phố Hà Nội', N'0976445870', NULL, 0, NULL, NULL, 1)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (5, CAST(N'2021-09-03T23:48:52.577' AS DateTime), 3, N'Bùi Quang Hải', N'[Cơ quan] Thôn Mạch Lũng, Xã Đại Mạch, Huyện Đông Anh, Thành phố Hà Nội', N'0976445870', NULL, 0, NULL, NULL, 1)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (6, CAST(N'2021-09-05T23:49:08.090' AS DateTime), 4, N'Bùi Quang Hải', N'[Cơ quan] Thôn Mạch Lũng, Xã Đại Mạch, Huyện Đông Anh, Thành phố Hà Nội', N'0976445870', NULL, 0, NULL, NULL, 1)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (7, CAST(N'2021-08-30T22:19:53.633' AS DateTime), 2, N'Bùi Quang Hải', N'[Cơ quan] Thôn Mạch Lũng, Xã Sính Phình, Huyện Tủa Chùa, Tỉnh Điện Biên', N'0976445870', N'Hello', 3, NULL, NULL, 1)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (8, CAST(N'2021-08-31T00:01:29.477' AS DateTime), 4, N'Bùi Quang Hải', N'[Cơ quan] Thôn Mạch Lũng, Xã Đại Mạch, Huyện Đông Anh, Thành phố Hà Nội', N'0976445870', NULL, 3, NULL, NULL, 1)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (9, CAST(N'2021-09-01T10:41:44.157' AS DateTime), 1, N'Bùi Quang Hải', N'[Cơ quan] Thôn Mạch Lũng, Xã Đại Mạch, Huyện Đông Anh, Thành phố Hà Nội', N'0976445870', N'', 0, NULL, NULL, 1)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (11, CAST(N'2021-09-01T10:41:58.873' AS DateTime), 1, N'Bùi Quang Hải', N'[Cơ quan] Thôn Mạch Lũng, Xã Đại Mạch, Huyện Đông Anh, Thành phố Hà Nội', N'0976445870', N'', 0, NULL, NULL, 1)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (12, CAST(N'2021-09-01T10:42:22.877' AS DateTime), 1, N'Bùi Quang Hải', N'[Cơ quan] Thôn Mạch Lũng, Xã Đại Mạch, Huyện Đông Anh, Thành phố Hà Nội', N'0976445870', N'', 0, NULL, NULL, 1)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (13, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1)
GO
INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [Note], [Payment], [ShipperId], [CouponId], [AccountId]) VALUES (14, CAST(N'2021-09-04T13:23:51.267' AS DateTime), 1, N'Bùi Thị Mỹ Duyên', N'[Nhà riêng] Làng Chài, Xã Võng La, Huyện Đông Anh, Thành phố Hà Nội', N'0907076600', N'', 0, NULL, NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (1, N'Văn Học', N'Thể loại văn học là một thể loại của sáng tác văn học. Thể loại có thể được xác định bằng kỹ thuật văn học, giọng điệu, nội dung hoặc thậm chí (như trong trường hợp tiểu thuyết). Sự khác biệt giữa các thể loại và thể loại là linh hoạt và được xác định một cách lỏng lẻo, thường có các nhóm nhỏ.')
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (2, N'Kinh Tế', N'Kinh tế học là một môn khoa học xã hội nghiên cứu hành vi con người và các phúc lợi xã hội như là một mối quan hệ giữa 1 bên là các nhu cầu không giới hạn của xã hội với bên kia là sự hạn chế của các nguồn cung vốn có các cách sử dụng khác nhau')
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (3, N'Tâm Lý - Kỹ Năng Sống', N'Tâm lý học là ngành khoa học nghiên cứu nguyên lý nảy sinh và vận hành thế giới tinh thần trong đời sống hàng ngày của con người dưới tác động của tổng hòa các mối quan hệ xã hội.')
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (4, N'Sách Thiếu Nhi', NULL)
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (5, N'Tiểu Sử - Hồi Ký', N'Tiểu sử là một mô tả chi tiết về cuộc sống của một người. Nó mô tả không chỉ những sự kiện cơ bản như giáo dục, công việc, các mối quan hệ và cái chết; mà còn miêu tả trải nghiệm của một người về những sự kiện cuộc sống này. ... ')
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
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (7, N'NXB Đại Học Quốc Gia', NULL)
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
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (1, N'Trứng Chim Cúc Cu Này Thuộc Về Ai?', 4, N'Keigo Higashino', 1, N'20.5 x 14.5 cm', 436, CAST(139000.00 AS Decimal(18, 2)), N'Đằng sau mỗi con người đều ẩn chứa một bí mật. Dù cố gắng che giấu đến mấy cũng sẽ có ngày những điều chôn sâu giấu kĩ đó bị phơi bày trước ánh sáng. Vậy thì sau cùng, ai mới là người chịu tổn thương sâu sắc nhất? Là chúng ta hay người mà chúng ta tìm cách che giấu bí mật đó?
<br><br>
Nếu bạn đang băn khoăn và chưa tìm được ra câu trả lời cho những thắc mắc này, hãy tự đi tìm đáp án cho mình trong cuốn sách đặc biệt này.
<br><br>
Hiromasa Hida từng là một trong những vận động viên trượt tuyết hàng đầu Nhật Bản, đại diện cho đất nước đi tham gia nhiều giải đấu quốc tế; con gái anh Kazami cũng là một vận động viên trượt tuyết. Lúc Kazami hai tuổi, vợ anh, mẹ của Kazami tự sát. Hida lúc đó đang trong giải đấu quốc tế khi Kazami trào đời, và chỉ khi anh vượt qua nỗi đau sau cái chết của người vợ anh mới biết rằng cô ấy có một bí mật cần che dấu: Kazami không phải là con gái ruột của họ. Bỏ qua nỗi đau của sự thật phũ phàng ấy, Hida tiếp tục nuôi dạy Kazami và con bé dần trở  thành một vận động viên tài giỏi hơn anh.
<br><br>
Một thời gian sau, với khát vọng tìm ra được mối liên kết giữa gien di truyền và kĩ năng đạt được của những vận động viên trượt tuyết trong một cuộc huấn luyện, đội của Kazami mong muốn được nghiên cứu bộ gen của cả người cha lẫn con gái nên đã đưa ra lời đề nghị mời cặp bố con Hida. Không muốn tiết lộ bí mật về sự ra đời của con gái mình, Hida từ chối yêu cầu đó. Kazami nhận được một bức thư đe dọa khi cô ấy chuẩn bị tham gia một giải đấu, và rồi có một cuộc đánh bom xe buýt rõ ràng là nhằm vào cô. Bị thương nặng trong vụ đánh bom là Nobuyuki Kamijo, chủ tịch một công ty xây dựng đã đến gặp Kazami, người tuyên bố là một fan hâm mộ của cô.
<br><br>
Ai là người đứng đằng sau vụ đe dọa và mục đích của họ là gì ?
<br><br>
Ai là cha mẹ ruột thực sự của Kazami ?
<br><br>
Hida tự tiến hành điều tra để trả lời những câu hỏi này, và anh đã tìm ra cha đẻ của Kazami. Nhưng việc tiết lộ sự thật kinh hoàng này với Kazami luôn là điều mà anh đắn đo. Giữa ranh giới của việc nói ra sự thật hoặc tiếp tục che dấu thân phận thực sự của Kazami. Đã đến lúc Hida phải đưa ra một quyết định quan trọng.
<br><br>
Bằng giọng văn ma mị sắc bén, tiết tấu dồn dập như đang sống trong những thước phim trinh thám gay cấn, Keigo Higashino đã dẫn dắt người đọc đi từ bất ngờ này sang bất ngờ khác, từng bước gỡ bỏ những nút thắt quan trọng và đẩy tình tiết câu truyện lên đến đỉnh điểm.
<br><br>
Lôi cuốn, ám ảnh, và đầy tính nhân văn, cuốn sách này xứng đáng là cuốn tiểu thuyết được tác giả Keigo Higashino dành nhiều tâm huyết nhất trong sự nghiệp văn chương của mình chắc chắn sẽ khiến các bạn độc giả hài lòng. Còn chần chừ gì nữa mà không sở hữu ngay cuốn sách đứng top đầu những cuốn sách trinh thám bán chạy nhất năm 2016.
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (2, N'Cho Trận Gió Kinh Thiên', 5, N'Nguyễn Thị Thụy Vũ', 1, N'13 x 20.5 cm', 345, CAST(91000.00 AS Decimal(18, 2)), N'"Sức hấp dẫn của Nguyễn Thị Thuỵ Vũ chính là câu chuyện gia đình, những cuộc hôn nhân éo le, gãy đổ do ràng buộc nghiêm ngặt của quan niệm cũ kỹ và những đổi thay bên ngoài của thời cuộc. Với mảng đề tài này, có một điều cần ghi nhận ngoài lời ăn tiếng nói rặt ròng Nam bộ, tác giả còn có biệt tài quan sát khi miêu tả sinh hoạt nghệ thuật quen thuộc ở nông thôn miền Nam thuở ấy như hát bội đình làng, giải sầu ca vọng cổ…, ngoài ra còn miêu tả các món ăn dân dã, quê mùa rất đỗi thân thương nay đã ít nhiều trở thành dĩ vãng.
<br><br>
Bên cạnh đó Nguyễn Thị Thuỵ Vũ cũng chọn cho mình một lối đi khác hẳn khi đưa vào tác phẩm của mình: đó là khai thác về số phận vũ nữ, gái bán bar, bằng cái nhìn nhân văn, sự đồng cảm sâu sắc về một tầng lớp phụ nữ bị rẻ rúng, khinh thường."
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (3, N'Nobita Và Những Pháp Sư Gió Bí Ẩn', 2, N'Fujiko F Fujio', 4, N'11.3 x 17.6 cm', 188, CAST(18000.00 AS Decimal(18, 2)), N'Nobita Và Những Pháp Sư Gió Bí Ẩn là tác phẩm thứ 23 trong series Doraemon Truyện Dài.
<br><br> 
Câu chuyện bắt đầu khi con gái của thần gió xuất hiện ở Tokyo và được Nobita đem về nuôi với cái tên Fuko. Fuko ẩn mình trong lốt gấu bông để ngụy trang, không may cô bé lại bị Suneo phát hiện và muốn bắt làm của riêng. 
<br><br> 
Ngày hôm sau, Doraemon và các bạn đưa Fuko đến một vùng thảo nguyên để chơi đùa. Họ tình cờ cứu được bé Sun, em của Temujin - thần dân Vương quốc Gió thoát khỏi sự truy đuổi của bộ tộc bão tố. Để cảm ơn, Temujin đã đưa nhóm bạn đến thăm xứ sở của mình. 
<br><br>
Đúng với tên gọi, ở đó người ta lao động và đi lại toàn nhờ bằng sức gió. Sau một ngày chơi đùa, nhóm Doraemon tạm để Fuko ở lại và quay về nhà. Không may Suneo bị linh hồn của pháp sư Uranda - Tộc trưởng Bộ tộc Bão tố nhập vào người. Tên Uranda trong lốt của Suneo đã quay trở về làng Gió để bắt Fuko, hắn phát hiện ra một vật thể có hình dạng như Fuko và đặt tên là Gorado...
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (4, N'Hành Trang Lập Trình - Những Kỹ Năng Lập Trình Viên Chuyên Nghiệp Cần Có', 6, N'Vũ Công Tấn Tài', 6, N'13.5 x 20 cm', 300, CAST(179000.00 AS Decimal(18, 2)), N'<b>Cuốn sách gồm 2 nội dung chính:</b>
<br><br>
<b>o Chương I: </b> Phần này trình bày những suy nghĩ và kĩ năng mềm cần thiết để bạn có thể hòa nhập và tiến xa được trong lĩnh vực công nghệ phần mềm. Nội dung trong phần này lại được chia thành những mục nhỏ hơn tương ứng với từng giai đoạn học tập và làm việc:
<br><br>
- Giai đoạn 1 – Học nghề: Trình bày những thái độ và kĩ năng học tập cần thiết để có thể học tập hiệu quả ở trường, cũng như chuẩn bị hành trang cho quá trình làm việc sau này.
<br><br>
- Giai đoạn 2 – Vào nghề: Cung cấp một vài thông tin hữu ích liên quan tới việc tìm kiếm và ứng tuyển vào những công ty công nghệ, phần này cũng đưa ra vài góc nhìn liên quan tới việc đánh giá và so sánh nơi làm việc để bạn tìm ra được công ty phù hợp.
<br><br>
- Giai đoạn 3 – Phát triển trong nghề: Sau khi đã tìm được nơi làm việc, phần này sẽ trình bày những suy nghĩ và cách tư duy làm việc để giúp bạn có thể tiến bộ hơn trong sự nghiệp lập trình viên.
<br><br>
<b>o Chương II:</b> Phần này sẽ đi sâu vào một vài kiến thức kĩ thuật nền tảng mình nghĩ là cần thiết cho quá trình phát triển sau này của một lập trình viên.
<br><br>
- Phần 1 – Clean Code (Mã sạch): Những dòng code được viết ra không phải chỉ dành cho máy tính, mà còn là để cho con người (bảo trì, phát triển…), đây là điều cực kì quan trọng nhưng thường ít được dạy kĩ càng khi ở trường. Phần này sẽ hướng dẫn các bạn cách để viết mã sạch.
<br><br>
-  Phần 2 – Những nguyên lí lập trình nâng cao (SOLID): Viết code chạy được chỉ là bước đầu tiên, để trở thành lập trình viên giỏi chúng ta cần phải biết cách viết code dễ bảo trì, dễ mở rộng và linh hoạt hơn. Phần này sẽ cùng bạn bàn luận về những nguyên lí lập trình nâng cao mà mọi lập trình viên có kinh nghiệm cần phải biết.
<br><br>
- Phần 3 – Đơn giản hóa các khái niệm kĩ thuật phức tạp: Lập trình không dễ, những cũng không thật sự khó, phần này sẽ cố gắng giải thích những khái niệm và kĩ thuật phức tạp nhằm giúp bạn có thể nhanh chóng nâng cao kĩ năng của bản thân.
<br><br>
<b>Lời khuyên của Biên tập viên dành cho việc đọc cuốn sách</b>
<br><br>
Đây là một cuốn sách về kĩ thuật, nhưng bạn đừng quá lo lắng nếu như chưa có nhiều kiến thức chuyên môn trong ngành. Cuốn sách này được thiết kế và trình bày đơn giản hóa theo những cách dễ hiểu nhất để các bạn sinh viên hoặc các bạn vừa mới đi làm cũng có thể hiểu một cách dễ dàng. Các bạn cũng có thể tham khảo qua bảng danh sách thuật ngữ ở cuối sách để có thể hiểu những khái niệm được đề cập tới trong sách.
<br><br>
<b>Tác giả Vũ Công Tấn Tài</b>
<br><br>
Tác giả Vũ Công Tấn Tài hiện đang làm việc như một lập trình viên full-stack toàn thời gian trong lĩnh vực phát triển ứng dụng Web và tham gia vào các dự án triển khai hệ thống CI/CD phục vụ cho các yêu cầu nâng cao chất lượng sản phẩm. Bên cạnh công việc chính, tác giả cũng thường tham gia hướng dẫn các lớp học lập trình cũng như tổ chức các buổi chia sẻ kinh nghiệm làm việc cho các bạn sinh viên.
<br><br>
Trong suốt quá trình làm việc và tìm kiếm thông tin, tác giả Vũ Công Tấn Tài nhận ra rằng lập trình viên ở Việt Nam khá cô đơn và thiệt thòi: không có nhiều nguồn thông tin bằng tiếng Việt, nếu có thì cũng nằm rải rác ở nhiều nơi, gây ra không ít khó khăn cho nhiều người.
<br><br>
Với mong muốn chia sẻ thật nhiều kiến thức, trong cuốn sách này, tác giả sẽ đem đến cho các bạn nhiều điều về nghề lập trình cũng như công việc của những nhà phát triển phần mềm – hay chúng ta vẫn hay gọi là nghề “lập trình viên”.
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (5, N'Huấn Luyện Viên Tự Tin', 3, N'Dr Sarah Jan Arnold', 3, N'17 x 13 cm', 122, CAST(69000.00 AS Decimal(18, 2)), N'Tự tin chính hiệu là trải nghiệm quý báu, mang tính thích nghi và liên kết với những mong muốn và giá trị của mỗi người. Nó có thể giúp bạn theo đuổi tham vọng, thể hiện bản thân tốt hơn, đạt được mục tiêu, đồng thời có được cảm giác thành tựu lẫn hạnh phúc lớn lao hơn. 
<br><br>
Công thức xây dựng sự tự tin chân chính gồm: 
<br><br>
Không ngừng thử nghiệm và mắc sai lầm.
<br><br>
Không ngừng nghiền ngẫm để từ đó thay đổi cách sống.
<br><br>
Tiếp tục thực hành thêm cho tới khi áp dụng thành thạo những điều đã học.
<br><br>
Nhưng, để có thể áp dụng được công thức trên, bạn cần một HUẤN LUYỆN VIÊN giỏi. Và cuốn sách này sẽ giúp bạn làm điều đó. Những bài tập rèn luyện theo từng cấp độ do Tiến sĩ Sarah Jane Arnold nghiên cứu sẽ từng bước gia tăng tâm thế sẵn sàng, thái độ tự tin cho bạn.
<br><br>
Hãy cứ giữ thái độ tò mò, cởi mở và sẵn lòng đọc tiếp, bạn sẽ hiểu hơn về hành trình để trở nên tự tin của bản thân! Qua thời gian, khi đã tích lũy đủ những bài học, trải nghiệm cá nhân, bạn rồi sẽ trở thành con người mà bạn muốn trở thành - con người thực sự của chính bạn!
<br><br>
Huấn Luyện Viên Tự Tin cùng với Huấn Luyện Viên Bình Tĩnh chắc chắn sẽ là bộ đôi huấn luyện viên cá nhân xuất sắc dành riêng cho bạn!
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (6, N'Những Tọa Độ Song Song', 3, N'Nguyễn Mai Chi', 1, N'20 x 14.5 cm', 200, CAST(109000.00 AS Decimal(18, 2)), N'Sâu sắc. Thấu hiểu. Dịu dàng. Và đầy ắp những khoảnh khắc lắng đọng rất Nguyễn Mai Chi.
<br><br>
Đó là những gì bạn có thể bắt gặp ở <b> “Những tọa độ song song’’ – phiên bản tái bản đặc biệt của “5 múi giờ, 10 tiếng bay và một cái khép mi”.</b>
<br><br>
Với một diện mạo hoàn toàn mới bằng ý tưởng “lạ” từ ban biên tập Bloom Books, <b>Những tọa độ song song</b> sẽ gửi đến bạn cùng lời nhắc nhớ về sợi dây liên kết bền bỉ, xuyên qua không gian và thời gian giữa quá khứ và hiện tại, giữa Paris và Hà Nội – hai “tọa độ an trú’’ gắn liền với tác giả Mai Chi. Cùng với nội dung có bổ sung những trang viết chưa từng đăng tải ở bất cứ đâu, Bloom tin rằng sự đồng cảm mà <b>Những tọa độ song song</b> mang đến sẽ không chỉ dừng lại ở những câu chuyện mà còn dẫn lối cho bạn quay về với những tọa độ quen thuộc của cảm xúc – đó là nơi tâm hồn bạn thuộc về, chứ không phải của bất kỳ ai khác.
<br><br>
“Người ta có thể làm rất nhiều thứ với chiếc ghế sắt sơn xanh trong vườn Tuileries. Ngồi lên đó và đọc sách, ngắm nhìn bầu trời, ngắm nhìn người đời, nhìn đàn vịt bơi lội trong đài phun nước, hàng người dài trước xe bán kem hiệu Amorino, trước bảo tàng Musée de l''Orangerie và trung tâm Jeu de Paume, hay bấm máy chụp trộm đôi tình nhân đang thủ thỉ trên một chiếc ghế khác gần đó.
<br><br>
Đó là sự kỳ diệu của những băng ghế ở Tuileries. Chỉ cần bạn đặt người xuống, cả ký ức và hiện thực sẽ hòa quyện. Hiện thực yên bình của khu vườn dẫn dụ bạn quay trở về quá khứ với những thước phim sépia đẹp đẽ nhất. Để khi quay lại với thời điểm trước mắt, ta bỗng cảm nhận một niềm vui sống dường như vượt quá cả sức chứa của tâm hồn, chảy tràn thành một giọt lệ của niềm hân hoan khi đối diện trước từng cử động của sự sống. Có phải bởi bước chân của những người đi tản bộ trong vườn luôn thong dong không mục đích? Có phải bởi gương mặt đóng băng hàng thế kỷ trên những bức tượng của Vidal, Coustou? Hay bởi đây là Paris?
<br><br>
Paris. Hay bất cứ một mảnh đất nào gắn liền với tâm hồn bạn.”
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (7, N'Tiếp Thị Giáo Dục 4.0', 7, N'Lê Phát Minh', 2, N'24 x 16 cm', 280, CAST(239000.00 AS Decimal(18, 2)), N'- Chương 1: Nhập môn tiếp thị giáo dụcChương đầu tiên cung cấp những kiến thức mang tính nền tảng về giáo dục và thị trường cho độc giả nhằm giúp cho việc tiếp cận những phân tích sâu hơn các thành phần của thị trường giáo dục ở những chương sau đó.
<br><br>
- Chương 2 - Khách hàng và phân khúc thị trường trong giáo dụcNội dung chương này sẽ tập trung phân tích những câu hỏi như: “Người học có phải là một khách hàng không?”, “Nếu người học là một khách hàng thì thị trường sẽ hình thành, phân chia, hợp nhất như thế nào?”.
<br><br>
- Chương 3: Môi trường kinh doanh tiếp thị giáo dụcChương này được thiết kế nhằm phân tích và miêu tả chi tiết những tương tác giữa các yếu tố môi trường kinh doanh và doanh nghiệp kinh doanh các sản phẩm hay dịch vụ mang tính giáo dục qua việc trả lời những câu hỏi như: “Đã là một ngành kinh doanh thì ắt hẳn thị trường giáo dục cũng phải nằm trong sự điều chỉnh của hệ thống pháp luật Việt Nam, cũng có những tương tác với các thiết chế xã hội cũng như các đối thủ cạnh tranh, nhà trung gian thương mại, khách hàng,…?”, “Làm thế nào tạo ra các thuận lợi trong kinh doanh, các giải pháp chiến lược phát triển từ những ảnh hưởng tích cực và tiêu cực của môi trường kinh doanh?”
<br><br>
- Chương 4: Sản phẩm giáo dụcChương thứ tư được thiết kế nhằm trả lời những câu hỏi như: “Sản phẩm giáo dục (hữu hình và vô hình) có khác với các sản phẩm hàng hóa tiêu dùng không?”, “Sản phẩm giáo dục hình thành và phát triển như thế nào?”, “Làm thế nào để có một chiến lược sản phẩm giáo dục phù hợp với các mục tiêu kinh doanh, thị trường giáo dục và thị trường lao động việc làm?”
<br><br>
- Chương 5: Chiến lược định giá sản phẩm giáo dụcNgay tại chương 1, bạn đọc đã cùng tác giả thấy việc “nhìn nhận” đúng bản chất thị trường giáo dục không hề đơn giản trong xã hội bị ảnh hưởng nặng nề bởi tư tưởng Nho giáo như Việt Nam, do đó, việc “ra giá học tập” để khách hàng lựa chọn lại là một khái niệm rất dễ bị công kích. Tuy nhiên, đã là thị trường thì ắt hẳn nó phải vận động theo những quy luật thị trường riêng của nó dưới sự định hướng của chiến lược phát triển giáo dục quốc gia. Những phương pháp định giá cụ thể sẽ được giới thiệu tại chương này, cùng với những phân tích chi tiết về các quy luật tâm lí của khách hàng/người học trong việc lựa chọn giá của sản phẩm giáo dục.
<br><br>
- Chương 6: Phân phối trong giáo dụcTrong kinh doanh thì mục tiêu phát triển thị trường ngày càng rộng, càng sâu có thể sẽ là những mục tiêu không thể bỏ qua. Doanh nghiệp kinh doanh sản phẩm giáo dục nên tự mình thực hiện những mục tiêu đó hay phải tìm kiếm thêm những đối tác kinh doanh để sản phẩm giáo dục của mình nhanh chóng đạt được các mục tiêu thị trường đã đề ra? Những đối tác này (những nhà phân phối trung gian), tại sao họ lại phải tham gia vào việc phát triển kinh doanh sản phải giáo dục của bạn? Họ quan tâm đến những lợi ích gì? Làm thế nào để phát triển tốt mối quan hệ với các nhà phân phối? Đây sẽ là những câu hỏi được phântích và trình bày chi tiết tại chương này.
<br><br>
- Chương 7: Chiến lược chiêu thị trong giáo dụcThị trường giáo dục cũng cạnh tranh khốc liệt không kém gì thị trường các sản phẩm hàng hóa thông thường, nên việc tìm ra các giải pháp kinh doanh, truyền thông để thu hút sự quan tâm, yêu mến và lựa chọn sản phẩm giáo dục của doanh nghiệp của Bạn không phải là chuyện dễ dàng. Nếu tham gia vào thị trường giáo dục với tư duy “áp đặt lên thị trường”, “cứ bỏ nhiều tiền ra là xong” thì chương này sẽ chỉ ra những bài học kinh nghiệm thất bại liên quan đến những tư duy trên đã dẫn tới việc nhiều doanh nghiệp phải thu hẹp kinh doanh hoặc phá sản. Chương này cũng sẽ cung cấp những kiến thức quan trọng cho bạn độc về quá trình truyền thông, các phương tiện truyền thông và vai trò của một chiến lược thông điệp sáng tạo quan trọng như thế nào.', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (8, N'Tuyển Đúng Dùng Hay - Nghệ Thuật Quản Trị Nguồn Nhân Lực', 8, N'Bùi Xuân Phong', 2, N'24 x 16 cm', 348, CAST(179000.00 AS Decimal(18, 2)), N'Kỷ nguyên số với trí tuệ nhân tạo, người máy và các công nghệ trao đổi dữ liệu giữa không gian ảo và môi trường thực đã và đang cắt giảm công việc của con người ở tất cả các ngành nghề trong xã hội. Nhưng dù công nghệ có phát triển đến mấy thì vẫn có những vị trí mà máy móc không bao giờ có thể thay thế con người, đó chính là những nhân sự cấp Chiến lược của mọi doanh nghiệp. Đặc biệt, với hầu hết các ngành dịch vụ như hàng không, y tế, khách sạn – nhà hàng… thì dù công nghệ có tiến bộ đến đâu cũng không thể thay thế được đội ngũ người lao động trực tiếp phục vụ khách hàng. Bởi vì sản phẩm cốt lõi của các ngành dịch vụ này là tạo ra cho khách hàng những cảm xúc trải nghiệm, mà chỉ có con người mới có thể tạo ra cảm xúc cho con người. Không một cỗ máy nào, dù chính xác hay tốc độ đến đâu, có thể làm thay được điều đó.
<br><br>
Tuy nhiên, cũng chính những điều kể trên đã đặt người làm công tác Nhân sự ở các tổ chức ngày nay trước một thử thách chưa từng có để duy trì vị thế và vai trò của mình trong môi trường kinh doanh của thời đại số. Bởi vì, nhiệm vụ của người làm nhân sự giờ đây không còn đơn thuần là tuyển mộ, sử dụng và quản lý những người lao động bình thường, những người làm việc ở những vị trí có thể dễ dàng bị thay thế bởi máy móc. Thay vào đó, nhiệm vụ trọng tâm của người làm nghề nhân sự hiện nay là thu hút và đãi ngộ những Nhân tài, tức là những người lao động có nền tảng kiến thức được đào tạo chuyên sâu, có những bộ kỹ năng đặc biệt giá trị mà không một cỗ máy nào thay thế được. Để làm được điều đó, người làm nhân sự ngày nay không chỉ phải giỏi nghiệp vụ mà còn buộc phải có một hệ tư duy mới về công tác nhân sự mà cốt lõi trong đó là nắm vững được nghệ thuật quản trị nguồn nhân lực với hai cột trụ là “tuyển đúng” và “dùng hay”.
<br><br>
Trong đó, “tuyển đúng” là việc hoạch định chiến lược nguồn nhân lực để tìm ra câu trả lời cho câu hỏi: “Nhân tài của doanh nghiệp là ai? Họ có những tính cách gì phù hợp văn hóa doanh nghiệp, họ có những năng lực gì để đẩy con thuyền kinh doanh của doanh nghiệp đạt được những mục tiêu của tổ chức ? Làm thế nào để doanh nghiệp có thể thu hút được Nhân tài bằng việc đáp ứng mong muốn và kỳ vọng của họ?” Nói ngắn gọn, “tuyển đúng” chính là việc tìm ra chân dung Nhân tài và thu hút Nhân tài phù hợp với doanh nghiệp. “Tuyển đúng” chính là nền tảng của nghệ thuật quản trị nguồn nhân lực. Tuyển có đúng thì dùng mới hay được.
<br><br>
Còn thế nào là “dùng hay”? Theo tác giả, biểu hiện quan trọng nhất của khái niệm “dùng hay” là phát triển tổ chức minh bạch, linh hoạt và chuyên nghiệp bằng văn hóa gắn kết và trao quyền, từ đó tạo động lực làm việc không ngừng cho cán bộ nhân viên, khích lệ sự tự chủ và tinh thần sáng tạo của họ. “Dùng hay” là kiến tạo môi trường làm việc tương trợ lẫn nhau mà ở đó, tâm lý và hành vi của người lao động được thấu hiểu, chất lượng đời sống của họ được nâng cao, đồng thời các cơ hội phát triển nghề nghiệp được mở ra để khích lệ và nuôi dưỡng tình yêu nghề của họ. Nếu bạn đang đi tìm lời giải chi tiết cho những giải pháp “tuyển đúng” và “dùng hay” ấy thì cuốn sách này dành cho bạn.
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (9, N'Xu Hướng Mới Dạy Tiếng Anh Cho Trẻ Mầm Non Và Tiểu Học', 9, N'	Nguyễn Quốc Hùng, MA', 6, N'24 x 17 cm', 120, CAST(49000.00 AS Decimal(18, 2)), N'Trong những thập kỷ qua, câu hỏi "Khi nào trẻ nên bắt đầu học ngoại ngữ?" dấy lên hai xu hướng, một là học từ nhỏ (6 tuổi) và rất nhỏ (3 tuổi), hai là bắt đầu học ở lứa tuổi 8-12, thậm chí khi đã trưởng thành. Hai xu hướng này mỗi xu hướng đều có những lập luận chặt chẽ thông qua những công trình nghiên cứu hoặc khảo sát nghiêm túc, nhưng không đối kháng nhau. Cuốn sách này giới thiệu cả hai xu hướng đó và đặt vấn đề nếu dạy trẻ từ nhỏ thì giải pháp nào là hợp lý, không cực đoan.
<br><br>
Bên cạnh đó, tác phẩm cũng mong muốn giải quyết những vấn đề kinh điển thường được đặt ra như: Khi nào nên cho trẻ học ngoại ngữ?; Những yếu tố nào giúp trẻ học ngoại ngữ tốt nhất? Người thầy cần có những phương pháp giáo dục như thế nào để mang lại hiệu quả dạy và học ngoại ngữ cao nhất?
<br><br>
Nhà xuất bản Phụ nữ Việt Nam trân trọng giới thiệu cùng bạn đọc.
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (10, N'Người Bà Tài Giỏi Vùng Saga', 6, N'Yoshichi Shimada', 5, N'18.5 x 13 cm', 216, CAST(128000.00 AS Decimal(18, 2)), N'Câu chuyện kể về Akihiro, cậu con trai út trong gia đình có hai anh em. Bố mất sớm, mẹ cậu làm việc ở một quán rượu tại Hiroshima, vất vả trang trải để nuôi lớn hai anh em. Thế nhưng Akihiro thường hay quấy khóc và nhõng nhẽo, khiến mẹ và anh trai bao phen khốn đốn. Sợ rằng cứ để như sẽ không tốt cho việc dạy dỗ cậu, mẹ của Akihiro đành gửi con trai về quê sống với bà ngoại.
<br><br>
Mới đầu, người bà trong mắt Akihiro vừa nghiêm khắc vừa đáng sợ, chẳng mấy khi bộc lộ tình cảm. Thế rồi cậu được cùng bà trải nghiệm bao điều mới mẻ: nhặt rau củ trôi từ thượng nguồn về chế biến thành đồ ăn, kéo theo một cục nam châm bên mình để gom sắt vụn dọc đường, lắng tai nghe tiếng nhà dột hệt như tiếng nhạc của thiên nhiê Ở vùng quê Saga nghèo đói đó, người bà đã dạy dỗ cậu qua từng hành động nhỏ nhặt nhất, không phải qua giấy bút hay sách vở. Bà dạy cậu phải luôn lạc quan và trân trọng những gì mình đang có, dạy cậu về giá trị của sức lao động và rằng kiên nhẫn rồi sẽ được đền đáp. Dù nghèo khó, không đủ cơm ăn áo mặc nhưng hai bà cháu lúc nào cũng vui vẻ và hạnh phúc.
<br><br>
Ở đất Saga này, khi nói đến “cực kì tài giỏi”, người ta thường dùng cụm “tài giỏi dữ thần”. Với Akihiro, bà của cậu chính là một người bà “tài giỏi dữ thần” như vậy!

Người bà tần tảo, nghiêm khắc nhưng đầy lòng thương, cùng với những con người nồng hậu nơi vùng quê Saga đã đem lại cho Akihiro tuổi ấu thơ dù thiếu thốn về vật chất nhưng luôn ấm áp tình người và ngập tràn niềm vui.
<br><br>
Qua những mẩu chuyện nhẹ nhàng xoay quanh cậu bé Akihiro và người bà “dữ thần”, bộ truyện “Người bà tài giỏi vùng Saga” truyền tải đến cho người đọc những thông điệp sâu sắc và đầy tính nhân văn về tình thân gia đình, tình người cũng như những giá trị tốt đẹp của cuộc sống. Bộ truyện này dành tặng bạn, dù bạn là ai, dù bạn ở lứa tuổi nào, để không ngừng lạc quan và vững tin tiến về phía trước!
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (11, N'Cuốn Sách Của Nàng Thơ', 10, N'Nicky Khánh Ngọc', 5, N'18 x 11 cm', 168, CAST(159000.00 AS Decimal(18, 2)), N'Nicky Khánh Ngọc – Biên tập viên làm đẹp tạp chí ELLE Việt Nam, đồng thời là chủ nhân blog làm đẹp Nàng Thơ vừa cho ra mắt cuốn sách đầu tay mang tên “Cuốn sách của Nàng Thơ”. Ấn phẩm 168 trang viết về đời sống của người phụ nữ thành thị với các lát cắt khác nhau: tình yêu, đời sống, làm đẹp, thời trang và nơi chốn.
<br><br>
Văn phong vừa trữ tình vừa dí dỏm, cuốn sách được mong chờ sẽ trở thành người bạn tri kỷ của phụ nữ hiện đại những người “vừa phù phiếm vừa trí tuệ” mải mê trên hành trình “self-love” yêu thương bản thân không có hồi kết. Chia sẻ vì sao lại cho ra mắt sách về phong cách sống trong thời điểm nhiều biến động vì đại dịch corona, tác giả Nicky Khánh Ngọc cho biết: “Một phần của cuốn sách này đã được tôi viết từ trước và đăng rải rác trên các trang mạng xã hội của mình. Tuy nhiên năm 2020 với những biến cố mang tính biến đổi cả thế giới lẫn con người, tôi nhận thấy lúc này tinh thần self love, tự yêu thương bản thân là chìa khóa quan trọng của mọi người, nhất là phụ nữ. Tự yêu thương, tự chăm sóc, tự chiêm nghiệm để luôn có được sự tĩnh tâm cũng như phong cách sống đẹp, đó là cách để phụ nữ đứng vững trước tác động của tình yêu riêng tư hay biến cố lớn lao. Thế là tôi cố gắng hoàn thành cuốn sách này để đánh thức Nàng Thơ trong mỗi người”.
<br><br>
Trải dài trên các trang sách là những suy tưởng về các vấn đề khác nhau trong cuộc sống phái đẹp: làm sao để vượt qua đổ vỡ tình cảm, làm bạn với cô đơn, tìm được niềm tin giữa mất mát, cho đến việc làm sao để chọn được màu son đỏ đẹp, trang phục phù hợp để hẹn hò, cách để được yêu, và những cảm xúc trên các miền đất mà tác giả đã đi qua khắp thế giới.
<br><br>
“Cuốn sách của Nàng Thơ” cũng là một ấn phẩm được đầu tư sản xuất công phu với chất liệu và thiết kế theo chuẩn mực của sách phong cách sống quốc tế. Sách có sự minh họa từ ảnh và tranh nguyên bản của hai nghệ sĩ trẻ Hạnh Trần và Duy Thanh dưới bàn tay chỉ đạo mỹ thuật của Nguyễn Phan Thùy Dương – giám đốc sáng tạo tu nghiệp tại Milan.
<br><br>
<b>Lời tác giả</b>
<br><br>
Cuốn sách này có thể là rất nhiều thứ, cũng có thể không là gì cả - tùy vào việc rung động của tôi và bạn có gặp được nhau không. Cuốn sách này cũng không có mục đích nào ngoài việc kể cho bạn nghe những điều tôi đã trải qua, đã hiểu được, đã dũng cảm viết thành lời. Mong trên đường xa vạn dặm của bạn, có những khi cần một ai ở bên vỗ về, bạn sẽ nhớ đến Nàng Thơ.                                                                            
<br><br>
Mỗi người đều là Nàng Thơ trong chính thế giới riêng tư nhỏ bé của mình. Mỗi khuyết điểm, mỗi sai lầm, mỗi vết cắt, từng mong chờ, yêu đương, run rẩy của mọi người phụ nữ đều khác biệt, đều diệu kỳ như những mảy bụi của sao trời. Có những trải nghiệm chỉ riêng mình biết, riêng mình cất giữ nhưng có sức mạnh hình thành và thay đổi một vũ trụ tâm hồn.
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (12, N'Chuyện Con Mèo Dạy Hải Âu Bay', 5, N'Luis Sepúlveda', 4, N'14 x 20.5 cm', 144, CAST(49000.00 AS Decimal(18, 2)), N'Cô hải âu Kengah bị nhấn chìm trong váng dầu – thứ chất thải nguy hiểm mà những con người xấu xa bí mật đổ ra đại dương. Với nỗ lực đầy tuyệt vọng, cô bay vào bến cảng Hamburg và rơi xuống ban công của con mèo mun, to đùng, mập ú Zorba. Trong phút cuối cuộc đời, cô sinh ra một quả trứng và con mèo mun hứa với cô sẽ thực hiện ba lời hứa chừng như không tưởng với loài mèo:
<br><br>
Không ăn quả trứng.
<br><br>
Chăm sóc cho tới khi nó nở.
<br><br>
Dạy cho con hải âu bay.
<br><br>
Lời hứa của một con mèo cũng là trách nhiệm của toàn bộ mèo trên bến cảng, bởi vậy bè bạn của Zorba bao gồm ngài mèo Đại Tá đầy uy tín, mèo Secretario nhanh nhảu, mèo Einstein uyên bác, mèo Bốn Biển đầy kinh nghiệm đã chung sức giúp nó hoàn thành trách nhiệm. Tuy nhiên, việc chăm sóc, dạy dỗ một con hải âu đâu phải chuyện đùa, sẽ có hàng trăm rắc rối nảy sinh và cần có những kế hoạch đầy linh hoạt được bàn bạc kỹ càng…
<br><br>
Chuyện con mèo dạy hải âu bay là kiệt tác dành cho thiếu nhi của nhà văn Chi Lê nổi tiếng Luis Sepúlveda – tác giả của cuốn Lão già mê đọc truyện tình đã bán được 18 triệu bản khắp thế giới. Tác phẩm không chỉ là một câu chuyện ấm áp, trong sáng, dễ thương về loài vật mà còn chuyển tải thông điệp về trách nhiệm với môi trường, về sự sẻ chia và yêu thương cũng như ý nghĩa của những nỗ lực – “Chỉ những kẻ dám mới có thể bay”.
<br><br>
Cuốn sách mở đầu cho mùa hè với minh họa dễ thương, hài hước là món quà dành cho mọi trẻ em và người lớn.
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (13, N'Phép Màu Để Trở Thành Chính Mình', 9, N'Nhan Húc Quân', 3, N'13 x 20.5 cm', 280, CAST(99000.00 AS Decimal(18, 2)), N'"Những ước mơ chỉ có thể thành hiện thực khi trái tim bạn đã cảm nhận hoặc tìm thấy niềm đam mê trong lĩnh vực mình yêu thích; hoặc trong công việc va chạm hàng ngày của chính mình. Các bạn hoàn toàn có quyền hy vọng và đặt niềm tin vào sự đam mê chính đáng của mình bằng lòng quả cảm, thái độ nghiêm túc, chín chắn trong suy nghĩ, sự chăm chỉ, nhiệt huyết và tính kiên định cộng với khả năng thực hành của chính bản thân. Biết chọn cách sống đàng hoàng, tử tế với những người xung quanh thì cuộc sống sẽ luôn mỉm cười với bạn. Và bạn sẽ thong dong, khoan thai bước tiếp con đường rộng mở ở phía trước."
<br><br>
<b>(Nhan Húc Quân)</b>
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (14, N'Dám Yêu Dám Gánh Vác', 6, N'Lý Ái Linh', 3, N'20.5 x 14.5 cm', 336, CAST(119000.00 AS Decimal(18, 2)), N'Tiếp nối thành công của cuốn sách “Bạn mới là chủ nhân của cuộc đời mình” và” Càng mạnh mẽ, càng dịu dàng” dành cho các cô gái trẻ mong muốn khẳng định mình, “Dám yêu dám gánh vác” hướng tới những cô gái trưởng thành, tự chịu trách nhiệm cho cuộc đời mình, dám nghe theo tiếng gọi thực sự của con tim, có đủ bản lĩnh để đưa ra sự lựa chọn và giành quyền làm chủ hạnh phúc.
<br><br>
Dám yêu, dám gánh vác là CUỐN SÁCH HAY NHẤT TRONG SỰ NGHIỆP CỦA LÝ ÁI LINH, sách gồm những câu chuyện, những lời thủ thỉ tâm tình, những trải nghiệm về tình yêu, sự nghiệp, hôn nhân, gia đình với những triết lý sâu sắc, những bài học thấm đượm tình người và những lời khuyên đậm chất “cô giáo Linh” sẽ giúp bạn hiểu và yêu thương bản thân nhiều hơn, sẵn sàng ngẩng cao đầu đối diện với mọi thử thách trong cuộc sống và có đủ dũng khí để yêu để sống một cuộc đời tốt đẹp như bạn mong muốn.
<br><br>
Trước đây, phụ nữ dựa vào việc chinh phục đàn ông để chinh phục thế giới. Bây giờ thì không cần nữa, phụ nữ có thể tự làm được việc đó.
<br><br>
Tình yêu rất quan trọng, nhưng không phải thứ quan trọng nhất. Đàn ông rất quan trọng, nhưng không phải là thứ cốt yếu trong cuộc đời.
<br><br>
Bất kì chuyện gì, bất kì tình cảm nào, cho dù đúng sai được thua ra sao, cũng đều là những trải nghiệm độc nhất vô nhị, không thể thay thế.
<br><br>
Chúng ta đến với thế giới này, chính là để trải qua sương gió cuộc đời.
<br><br>
Bạn dám yêu, thì sẽ dám làm.
<br><br>
Người đã từng yêu, suy cho cùng thì cũng đã được lời rồi. Dù cho tàn cuộc đường ai nấy đi, thì cũng đáng để lưu luyến một đời.
<br><br>
Chỉ mong sao chúng ta đều có thể sống với phiên bản tốt nhất của chính mình, trong sự lựa chọn của chính mình.
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (15, N'Hệ Thống Ngân Hàng Hoa Kỳ', 3, N'Center For Financial Training', 2, N'24 x 17 cm', 458, CAST(390000.00 AS Decimal(18, 2)), N'Hệ Thống Ngân Hàng Hoa Kỳ Mặc dù sự cạnh tranh ảnh hưởng của các trung tâm tài chính trên phạm vi toàn thế giới ngày càng trở nên khốc liệt, tuy nhiên, với vị trí là nền kinh tế số một thế giới, hoạt động trong lĩnh vực dịch vụ tài chính của Hoa Kỳ vẫn thu hút được sự chú ý của giới học thuật cũng như quản trị tại các tổ chức cung cấp dịch vụ tài chính và cơ quan quản lý nhà nước đối với dịch vụ tài chính trên phạm vi toàn cầu. 
<br><br>
Cuốn sách "Hệ thống ngân hàng Hoa Kỳ" do Trung tâm Đào tạo Tài chính phát hành nhằm cung cấp những nguyên tắc và thông lệ trong hoạt động ngân hàng và tín dụng tại Hoa Kỳ, thông qua đó giúp cho người đọc hiểu và nắm được những vấn đề cơ bản trong hoạt động ngân hàng ở quốc gia đang dẫn đầu thế giới trong lĩnh vực tài chính nói chung và ngân hàng nói riêng. 
<br><br>
Ngoài ra, cuốn sách cũng đề cập tới những vấn đề được quan tâm trong quá trình vận hành hoạt động ngân hàng như an toàn, gian lận và đạo đức; marketing ngân hàng và các cơ hội nghề nghiệp trong lĩnh vực ngân hàng tại Hoa Kỳ. Đặc biệt, sách có đính kèm tài khoản học trực tuyến Mindtap- giải pháp học Blended Learning nhằm tối ưu hóa việc giảng dạy cho các giảng viên, cung cấp công cụ học tập trực tuyến hiệu quả cho sinh viên, và tạo sự gắn kết hơn giữa giảng viên với sinh viên.
', NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (16, N'Dế Mèn Phiêu Lưu Ký', 2, N'Tô Hoài', 4, N'19 x 13 cm', 178, CAST(49000.00 AS Decimal(18, 2)), N'Trong hơn nửa thế kỉ kể từ ngày ra mắt bạn đọc lần đầu tiên năm 1941, "Dế Mèn phiêu lưu kí" là một trong những sáng tác tâm đắc nhất của nhà văn Tô Hoài. 
<br><br>
Tác phẩm đã được tái bản nhiều lần và được dịch ra hơn 20 thứ tiếng trên thế giới và luôn được các thế hệ độc giả nhỏ tuổi đón nhận. 
<br><br>
Tác phẩm đã được xuất bản với nhiều hình thức khác nhau. 
<br><br>
Trong đó cuốn "Dế Mèn phiêu lưu kí" gồm 148 trang, trên khổ giấy 18x25 cm với nhiều minh hoạ sinh động của hoạ sĩ Tạ Huy Long - một hoạ sĩ chuyên vẽ cho sách thiếu nhi. 
<br><br>
Bằng cách sử dụng màu nước điêu luyện, hoạ sĩ Tạ Huy Long đã làm sống động thêm tác phẩm bất hủ của nhà văn Tô Hoài. 
<br><br>
Cuốn sách là món quà đẹp cả về hình thức lẫn nội dung, là món quà ý nghĩa và bổ ích mà các bậc phụ huynh tặng cho con em của mình.
', CAST(N'2021-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (17, N'Trump - Đừng Bao Giờ Bỏ Cuộc', 1, N'Donald J.Trump & Meredith Mclver', 5, N'13 x 20.5 cm', 216, CAST(165000.00 AS Decimal(18, 2)), N'Trump - Đừng bao giờ bỏ cuộc, doanh nhân nổi tiếng nhất thế giới này thẳng thắn giãi bày những thách thức to lớn nhất, những giây phút tệ hại nhất, và những cuộc chiến khốc liệt nhất - và cách ông biến những nghịch cảnh đó thành các thành công mới.
<br><br>
Cuốn sách còn đưa ra những lời khuyên đắt giá trong kinh về: cách phản pháo khi gặp thất bại và trở ngại; biến những vấn đề lớn thành những cơ hội thậm chí còn lớn hơn; cách biến kẻ thù và địch thủ thành bạn bè và đồng minh; cách tận dụng những thất bại trước mắt làm động lực cho bản thân bạn - và khiến bạn kiên cường hơn.
<br><br>
Qua những câu chuyện và trải nghiệm sâu sắc từ một nhà kinh doanh bậc thầy sẽ giúp bạn tự tin vào bản thân khi phải đối mặt với những khó khăn, vượt qua trở ngại để hiện thực hóa những giấc mơ.
', CAST(N'2021-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (18, N'Tự Học 2000 Từ Vựng Tiếng Anh Theo Chủ Đề', 7, N'The Windy', 6, N'14.5 x 9.5 cm', 260, CAST(65000.00 AS Decimal(18, 2)), N'Nhà ngôn ngữ học nổi tiếng D.A.Wilkins đã nói rằng “Without grammar, very little can be conveyed; without vocabulary, nothing can be conveyed.” (Không có ngữ pháp, rất ít thông tin có thể được truyền đạt; Không có từ vựng, không một thông tin nào có thể được truyền đạt cả). Vì thế, trong việc học một ngoại ngữ, thì từ vựng có thể xem như các tế bào nhỏ hình thành nên khả năng sử dụng ngoại ngữ của người học.
<br><br>
Các bạn đang băn khoăn chưa biết nên học từ vựng như thế nào để có thể ghi nhớ được nhiều từ và lâu nhất. Dưới đây là những phương pháp học mà các bạn có thể áp dụng để học từ vựng hiệu quả nhất.
<br><br>
1. Học từ vựng theo chủ đề
Thay vì học riêng lẻ từng từ rời rạc, nếu các bạn biết nhóm chúng vào cùng một chủ đề thì đảm bảo việc học thuộc sẽ trở nên đơn giản hơn rất nhiều luôn. Có vốn từ vựng theo chủ đề, khi làm bài thi nói hoặc viết theo một chủ đề nào đó bạn sẽ phát huy được tối đa vốn từ vựng. Khiến bài nói và bài viết của bạn trôi chảy và nhiều ý tưởng. Vì vậy, việc học từ theo chủ đề cũng giống như một mũi tên trúng hai đích vậy, vừa giúp chúng ta biết thêm nhiều từ mới, vừa có nhiều từ vựng và ý hay để triển khai cho bài thi được tốt hơn.
<br><br>
2. Sử dụng hình ảnh, âm thanh hay câu chuyện để ghi nhớ từ vựng nhanh
Thực tế cho thấy, cách mà nhiều người thường hay học từ vựng đó là viết từ vựng đó kèm nghĩa ra giấy thật nhiều lần để ghi nhớ. Tuy nhiên, cách này có thể hiệu quả tức thời nhưng về lâu về dài, nếu không sử dụng lại thì chắc chắn ta sẽ quên từ. Ngược lại, nếu sử dụng những hình ảnh, âm thanh hay câu chuyện ấn tượng thì có thể khiến não bộ chúng ta nhớ rất mãi. Cách thức học này cũng vô cùng đơn giản, khi chúng ta học một từ mới, hãy cố gắng tự nghĩ ý tưởng và minh họa cho nó bằng hình ảnh ngộ nghĩnh, khi học một nhóm từ vựng theo chủ đề, hãy cố gắng sắp xếp chúng vào thành một đoạn văn, kể về một câu chuyện thú vị.
<br><br>
3. Học từ vựng qua bài hát, phim ảnh
<br><br>
Nhiều lúc do tâm lý nghĩ học tập là một gánh nặng, bắt buộc phải học mà khiến chúng ta mất đi niềm vui trong việc tiếp nhận tri thức. Nếu các bạn có thể giải tỏa tâm lý đó bằng việc nghe nhạc hay xem phim thì sẽ khiến từ mới “vào đầu” dễ dàng hơn mà không khiến ta chán nản khi học. Các bạn nên học từ vựng bằng những phim từ mức độ thấp đến cao. Rất nhiều bộ phim hay để học tiếng Anh như: Extra English, Friends, How I met your mother?...
<br><br>
4. Luôn có một cuốn sổ tay ghi từ mới
Cuốn sổ này sẽ cực kì hữu ích cho bạn trong việc học mọi lúc mọi nơi. Mỗi ngày bạn hay ghi vào quyển sổ đó những từ mới học được bao gồm nghĩa, họ từ và ngày nào cũng mở ra đọc và học lại như vậy từ vựng đó sẽ không bao giờ có thể quên được.
<br><br>
5. Tập sử dụng các từ mới và ôn tập thường xuyên
Sau khi học các từ mới, bạn nên tập sử dụng chúng hàng
', CAST(N'2021-06-06T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 
GO
INSERT [dbo].[Review] ([ReviewId], [AccountId], [ProductId], [Rating], [Content], [CreatedTime]) VALUES (2, 2, 18, 5, N'Rất bổ ích', CAST(N'2021-09-04T15:32:39.943' AS DateTime))
GO
INSERT [dbo].[Review] ([ReviewId], [AccountId], [ProductId], [Rating], [Content], [CreatedTime]) VALUES (3, 2, 16, 4, N'Truyện hay thật đấy tác giả đúng là rất công phu trong khi viết bài này', CAST(N'2021-09-04T15:42:44.453' AS DateTime))
GO
INSERT [dbo].[Review] ([ReviewId], [AccountId], [ProductId], [Rating], [Content], [CreatedTime]) VALUES (4, 1, 16, 5, N'Dế mèn phiêu lưu ký có nội dung quá quen thuộc với chúng ta. Sách được tái bản nhiều lần cho thấy rằng nội dung và tình tiết câu chuyện hay và phù hợp với tư duy cuộc sống.', CAST(N'2021-09-04T15:44:09.213' AS DateTime))
GO
INSERT [dbo].[Review] ([ReviewId], [AccountId], [ProductId], [Rating], [Content], [CreatedTime]) VALUES (5, 1, 17, 2, N'Không hay lắm', CAST(N'2021-09-04T15:45:48.480' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (1, 10, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (1, 13, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (1, 14, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (1, 18, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (2, 13, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (3, 11, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (3, 14, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (4, 14, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (5, 10, 4)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (5, 13, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (6, 11, 3)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (6, 17, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (7, 10, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (7, 14, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (8, 11, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (9, 17, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (9, 18, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (11, 11, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (11, 13, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (12, 17, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (13, 14, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (13, 17, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderId], [ProductId], [Quantity]) VALUES (14, 17, 1)
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
