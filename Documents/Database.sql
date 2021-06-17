USE [BookStoreDB]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountId], [UserName], [Password], [ImageURL], [FirstName], [LastName], [Address], [Phone], [Email], [Role], [CreatedDate]) VALUES (1, N'bqhai', N'123', N'avt-hai.jpg', N'Hải', N'Bùi Quang', N'Mạch Lũng - Đại Mạch - Đông Anh - Hà Nội', N'0976445870', N'bqhai.199x@gmail.com', 1, NULL)
INSERT [dbo].[Account] ([AccountId], [UserName], [Password], [ImageURL], [FirstName], [LastName], [Address], [Phone], [Email], [Role], [CreatedDate]) VALUES (2, N'haibq', N'123', NULL, N'Giang', N'Nguyễn Hoàng', N'Làng Chài - Võng La - Đông Anh - Hà Nội', N'0907076600', N'yendu197@gmail.com', 0, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [OrderDate], [Status], [FullName], [Address], [Phone], [ShipperId], [CouponId], [AccountId]) VALUES (1, NULL, 0, N'Bùi Quang Hải', N'Mạch Lũng - Đại Mạch - Đông Anh - Hà Nội', N'0976445870', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (1, N'Văn Học', NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (2, N'Kinh Tế', NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (3, N'Tâm Lý - Kỹ Năng Sống', NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (4, N'Sách Thiếu Nhi', NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (5, N'Tiểu Sử - Hồi Ký', NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [Description]) VALUES (6, N'Sách Chuyên Ngành', NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (1, N'NXB Trẻ', NULL)
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (2, N'NXB Kim Đồng', NULL)
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (3, N'NXB Thế Giới', NULL)
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (4, N'NXB Văn Học', NULL)
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (5, N'NXB Hội Nhà Văn', NULL)
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (6, N'NXB Thanh Niên', NULL)
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (7, N'NVB Đại Học Quốc Gia', NULL)
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (8, N'NXB Dân Trí', NULL)
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (9, N'NXB Phụ Nữ Việt Nam', NULL)
INSERT [dbo].[Publisher] ([PublisherId], [Name], [Description]) VALUES (10, N'NXB Văn Hoá - Văn Nghệ', NULL)
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

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
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (2, N'Cho Trận Gió Kinh Thiên', 5, N'Nguyễn Thị Thụy Vũ', 1, N'13 x 20.5 cm', 345, CAST(91000.00 AS Decimal(18, 2)), N'"Sức hấp dẫn của Nguyễn Thị Thuỵ Vũ chính là câu chuyện gia đình, những cuộc hôn nhân éo le, gãy đổ do ràng buộc nghiêm ngặt của quan niệm cũ kỹ và những đổi thay bên ngoài của thời cuộc. Với mảng đề tài này, có một điều cần ghi nhận ngoài lời ăn tiếng nói rặt ròng Nam bộ, tác giả còn có biệt tài quan sát khi miêu tả sinh hoạt nghệ thuật quen thuộc ở nông thôn miền Nam thuở ấy như hát bội đình làng, giải sầu ca vọng cổ…, ngoài ra còn miêu tả các món ăn dân dã, quê mùa rất đỗi thân thương nay đã ít nhiều trở thành dĩ vãng.
<br><br>
Bên cạnh đó Nguyễn Thị Thuỵ Vũ cũng chọn cho mình một lối đi khác hẳn khi đưa vào tác phẩm của mình: đó là khai thác về số phận vũ nữ, gái bán bar, bằng cái nhìn nhân văn, sự đồng cảm sâu sắc về một tầng lớp phụ nữ bị rẻ rúng, khinh thường."
', NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (3, N'Nobita Và Những Pháp Sư Gió Bí Ẩn', 2, N'Fujiko F Fujio', 4, N'11.3 x 17.6 cm', 188, CAST(18000.00 AS Decimal(18, 2)), N'Nobita Và Những Pháp Sư Gió Bí Ẩn là tác phẩm thứ 23 trong series Doraemon Truyện Dài.
<br><br> 
Câu chuyện bắt đầu khi con gái của thần gió xuất hiện ở Tokyo và được Nobita đem về nuôi với cái tên Fuko. Fuko ẩn mình trong lốt gấu bông để ngụy trang, không may cô bé lại bị Suneo phát hiện và muốn bắt làm của riêng. 
<br><br> 
Ngày hôm sau, Doraemon và các bạn đưa Fuko đến một vùng thảo nguyên để chơi đùa. Họ tình cờ cứu được bé Sun, em của Temujin - thần dân Vương quốc Gió thoát khỏi sự truy đuổi của bộ tộc bão tố. Để cảm ơn, Temujin đã đưa nhóm bạn đến thăm xứ sở của mình. 
<br><br>
Đúng với tên gọi, ở đó người ta lao động và đi lại toàn nhờ bằng sức gió. Sau một ngày chơi đùa, nhóm Doraemon tạm để Fuko ở lại và quay về nhà. Không may Suneo bị linh hồn của pháp sư Uranda - Tộc trưởng Bộ tộc Bão tố nhập vào người. Tên Uranda trong lốt của Suneo đã quay trở về làng Gió để bắt Fuko, hắn phát hiện ra một vật thể có hình dạng như Fuko và đặt tên là Gorado...
', NULL)
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
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (5, N'Huấn Luyện Viên Tự Tin', 3, N'Dr Sarah Jan Arnold', 3, N'17 x 13 cm', 122, CAST(69000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (6, N'Những Tọa Độ Song Song', 3, N'Nguyễn Mai Chi', 1, N'20 x 14.5 cm', 200, CAST(109000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (7, N'Tiếp Thị Giáo Dục 4.0', 7, N'Lê Phát Minh', 2, N'24 x 16 cm', 280, CAST(239000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (8, N'Tuyển Đúng Dùng Hay - Nghệ Thuật Quản Trị Nguồn Nhân Lực', 8, N'Bùi Xuân Phong', 2, N'24 x 16 cm', 348, CAST(179000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (9, N'Xu Hướng Mới Dạy Tiếng Anh Cho Trẻ Mầm Non Và Tiểu Học', 9, N'	Nguyễn Quốc Hùng, MA', 6, N'24 x 17 cm', 120, CAST(49000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (10, N'Người Bà Tài Giỏi Vùng Saga', 6, N'Yoshichi Shimada', 5, N'18.5 x 13 cm', 216, CAST(128000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (11, N'Cuốn Sách Của Nàng Thơ', 10, N'Nicky Khánh Ngọc', 5, N'18 x 11 cm', 168, CAST(159000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (12, N'Chuyện Con Mèo Dạy Hải Âu Bay', 5, N'Luis Sepúlveda', 4, N'14 x 20.5 cm', 144, CAST(49000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (13, N'Phép Màu Để Trở Thành Chính Mình', 9, N'Nhan Húc Quân', 3, N'13 x 20.5 cm', 280, CAST(99000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (14, N'Dám Yêu Dám Gánh Vác', 6, N'Lý Ái Linh', 3, N'20.5 x 14.5 cm', 336, CAST(119000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (15, N'Hệ Thống Ngân Hàng Hoa Kỳ', 3, N'Center For Financial Training', 2, N'24 x 17 cm', 458, CAST(390000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (16, N'Dế Mèn Phiêu Lưu Ký', 2, N'Tô Hoài', 4, N'19 x 13 cm', 178, CAST(49000.00 AS Decimal(18, 2)), NULL, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (17, N'Trump - Đừng Bao Giờ Bỏ Cuộc', 1, N'Donald J.Trump & Meredith Mclver', 5, N'13 x 20.5 cm', 216, CAST(165000.00 AS Decimal(18, 2)), N'Trump - Đừng bao giờ bỏ cuộc, doanh nhân nổi tiếng nhất thế giới này thẳng thắn giãi bày những thách thức to lớn nhất, những giây phút tệ hại nhất, và những cuộc chiến khốc liệt nhất - và cách ông biến những nghịch cảnh đó thành các thành công mới.
<br>
<br>
Cuốn sách còn đưa ra những lời khuyên đắt giá trong kinh về: cách phản pháo khi gặp thất bại và trở ngại; biến những vấn đề lớn thành những cơ hội thậm chí còn lớn hơn; cách biến kẻ thù và địch thủ thành bạn bè và đồng minh; cách tận dụng những thất bại trước mắt làm động lực cho bản thân bạn - và khiến bạn kiên cường hơn.
<br>
<br>
Qua những câu chuyện và trải nghiệm sâu sắc từ một nhà kinh doanh bậc thầy sẽ giúp bạn tự tin vào bản thân khi phải đối mặt với những khó khăn, vượt qua trở ngại để hiện thực hóa những giấc mơ.', CAST(N'2021-06-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (18, N'Tự Học 2000 Từ Vựng Tiếng Anh Theo Chủ Đề', 7, N'The Windy', 6, N'14.5 x 9.5 cm', 260, CAST(65000.00 AS Decimal(18, 2)), NULL, CAST(N'2021-06-06T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([ReviewId], [AccountId], [ProductId], [Rating], [Content], [CreatedTime]) VALUES (1, 2, 17, 5, N'Cuốn sách rất bổ ích', NULL)
INSERT [dbo].[Review] ([ReviewId], [AccountId], [ProductId], [Rating], [Content], [CreatedTime]) VALUES (2, 2, 17, NULL, N'Trump đại đế', NULL)
INSERT [dbo].[Review] ([ReviewId], [AccountId], [ProductId], [Rating], [Content], [CreatedTime]) VALUES (3, 1, 17, 2, N'Phản đối Donal Trump', NULL)
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (1, N'hanh-trang-lap-trinh.jfif', 4)
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
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (23, N'trung-chim-cuc-cu-nay-thuoc-ve-ai-2.jpg', 1)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (24, N'trung-chim-cuc-cu-nay-thuoc-ve-ai-3.jpg', 1)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (25, N'nobita-va-nhung-phap-su-gio-bi-an-2.jpg', 3)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (26, N'phep-mau-de-tro-thanh-chinh-minh.jfif', 13)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (27, N'phep-mau-de-tro-thanh-chinh-minh-2.jfif', 13)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (28, N'phep-mau-de-tro-thanh-chinh-minh-3.jfif', 13)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (29, N'dam-yeu-dam-ganh-vac.jpg', 14)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (30, N'dam-yeu-dam-ganh-vac-2.jpg', 14)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (31, N'dam-yeu-dam-ganh-vac-3.jpg', 14)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (32, N'he-thong-ngan-hang-hoa-ky.png', 15)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (33, N'he-thong-ngan-hang-hoa-ky-2.jpg', 15)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (34, N'de-men-phieu-luu-ky.jpg', 16)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (35, N'de-men-phieu-luu-ky-2.jfif', 16)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (36, N'de-men-phieu-luu-ky-3.jfif', 16)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (37, N'trump-dung-bao-gio-bo-cuoc.jfif', 17)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (38, N'trump-dung-bao-gio-bo-cuoc-2.jfif', 17)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (39, N'trump-dung-bao-gio-bo-cuoc-3.jfif', 17)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (40, N'tu-hoc-2000-tu-vung-tieng-anh-theo-chu-de.jpg', 18)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (41, N'tu-hoc-2000-tu-vung-tieng-anh-theo-chu-de-2.jpg', 18)
INSERT [dbo].[ProductImage] ([ProductImageId], [ImageURL], [ProductId]) VALUES (42, N'tu-hoc-2000-tu-vung-tieng-anh-theo-chu-de-3.jpg', 18)
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO
