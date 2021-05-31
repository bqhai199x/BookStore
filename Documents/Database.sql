USE [TofuBookDB]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description]) VALUES (1, N'Văn Học', NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description]) VALUES (2, N'Kinh Tế', NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description]) VALUES (3, N'Tâm Lý - Kỹ Năng Sống', NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description]) VALUES (4, N'Sách Thiếu Nhi', NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description]) VALUES (5, N'Tiểu Sử - Hồi Ký', NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description]) VALUES (6, N'Giáo Khoa - Tham Khảo', NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Publishers] ON 
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name], [Description]) VALUES (1, N'NXB Trẻ', NULL)
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name], [Description]) VALUES (2, N'NXB Kim Đồng', NULL)
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name], [Description]) VALUES (3, N'NXB Thế Giới', NULL)
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name], [Description]) VALUES (4, N'NXB Văn Học', NULL)
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name], [Description]) VALUES (5, N'NXB Hội Nhà Văn', NULL)
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name], [Description]) VALUES (6, N'NXB Thanh Niên', NULL)
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name], [Description]) VALUES (7, N'NVB Đại Học Sư Phạm Tp.HCM', NULL)
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name], [Description]) VALUES (8, N'NXB Dân Trí', NULL)
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name], [Description]) VALUES (9, N'NXB Phụ Nữ Việt Nam', NULL)
GO
INSERT [dbo].[Publishers] ([PublisherId], [Name], [Description]) VALUES (10, N'NXB Văn Hoá - Văn Nghệ', NULL)
GO
SET IDENTITY_INSERT [dbo].[Publishers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (1, N'Trứng Chim Cúc Cu Này Thuộc Về Ai?', 4, N'Keigo Higashino', 1, N'20.5 x 14.5 cm', 436, CAST(139000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (2, N'Cho Trận Gió Kinh Thiên', 5, N'Nguyễn Thị Thụy Vũ', 1, N'13 x 20.5 cm', 345, CAST(91000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (3, N'Nobita Và Những Pháp Sư Gió Bí Ẩn', 2, N'Fujiko F Fujio', 4, N'11.3 x 17.6 cm', 188, CAST(18000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (4, N'Hành Trang Lập Trình - Những Kỹ Năng Lập Trình Viên Chuyên Nghiệp Cần Có', 6, N'Vũ Công Tấn Tài', 6, N'13.5 x 20 cm', 300, CAST(179000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (5, N'Huấn Luyện Viên Tự Tin', 3, N'Dr Sarah Jan Arnold', 3, N'17 x 13 cm', 122, CAST(69000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (6, N'Những Tọa Độ Song Song', 3, N'Nguyễn Mai Chi', 1, N'20 x 14.5 cm', 200, CAST(109000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (7, N'Tiếp Thị Giáo Dục 4.0', 7, N'Lê Phát Minh', 2, N'24 x 16 cm', 280, CAST(199000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (8, N'Tuyển Đúng Dùng Hay - Nghệ Thuật Quản Trị Nguồn Nhân Lực', 8, N'Bùi Xuân Phong', 2, N'24 x 16 cm', 348, CAST(180000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (9, N'Xu Hướng Mới Dạy Tiếng Anh Cho Trẻ Mầm Non Và Tiểu Học', 9, N'	Nguyễn Quốc Hùng, MA', 6, N'24 x 17 cm', 120, CAST(50000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (10, N'Người Bà Tài Giỏi Vùng Saga', 6, N'Yoshichi Shimada', 5, N'18.5 x 13 cm', 216, CAST(128000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (11, N'Cuốn Sách Của Nàng Thơ', 10, N'Nicky Khánh Ngọc', 5, N'18 x 11 cm', 168, CAST(160000.00 AS Decimal(18, 2)), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [PublisherId], [Author], [CategoryId], [Size], [NumPage], [Price], [Description], [CreatedDate]) VALUES (12, N'Chuyện Con Mèo Dạy Hải Âu Bay', 5, N'Luis Sepúlveda', 4, N'14 x 20.5 cm', 144, CAST(49000.00 AS Decimal(18, 2)), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (1, N'hanh-trang-lap-trinh.jpg', 4)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (2, N'hanh-trang-lap-trinh-2.jfif', 4)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (3, N'hanh-trang-lap-trinh-3.jfif', 4)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (4, N'huan-luyen-vien-tu-tin.jpg', 5)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (5, N'huan-luyen-vien-tu-tin-2.jpg', 5)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (6, N'nhung-toa-do-song-song.jpg', 6)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (8, N'tiep-thi-giao-duc-4-0.jpg', 7)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (9, N'tuyen-dung-dung-hay.jpg', 8)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (10, N'xu-huong-moi-day-tieng-anh-cho-tre-mam-non-va-tieu-hoc.jpg', 9)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (11, N'trung-chim-cuc-cu-nay-thuoc-ve-ai.jpg', 1)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (12, N'cho-tran-gio-kinh-thien.jpg', 2)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (13, N'nobita-va-nhung-phap-su-gio-bi-an.jpg', 3)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (14, N'nguoi-ba-tai-gioi-vung-saga.jpg', 10)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (15, N'nguoi-ba-tai-gioi-vung-saga-2.jpg', 10)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (17, N'cuon-sach-cua-nang-tho.jpg', 11)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (18, N'cuon-sach-cua-nang-tho-2.jpg', 11)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (19, N'cuon-sach-cua-nang-tho-3.jpg', 11)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (20, N'truyen-con-meo-day-hai-au-bay.jpg', 12)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (21, N'truyen-con-meo-day-hai-au-bay-2.jpg', 12)
GO
INSERT [dbo].[ProductImages] ([ProductImageId], [ImageURL], [ProductId]) VALUES (22, N'truyen-con-meo-day-hai-au-bay-3.jpg', 12)
GO
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202105301416078_InitialCreate', N'BookStore.DataAccess.Data.BookStoreContext', 0x1F8B0800000000000400ED1DD96EE4B8F13D40FE41D05312CCBAED992CB019B477E178C681B17338D3339BBC19B244B785D5D191D45E3B41BE2C0FF9A4FC42A88314AFA2489DDD93C02F6D512C16EB24ABA8E27FFEF5EFF50F4F71E43CA22C0FD3E4DC3D3B39751D94F8691026DB73775FDC7FF39DFBC3F7BFFED5FA6D103F393F91F75E95EFE19E497EEE3E14C5EEF56A95FB0F28F6F29338F4B3344FEF8B133F8D575E90AE5E9E9EFE617576B64218848B6139CEFAD33E29C21855FFE07F2FD3C447BB62EF45EFD3004579F31CB76C2AA8CE072F46F9CEF3D1B9FBC734FD7953A4193A79E315DE85EFA33CAF7EBACE45147A18A10D8AEE5DC74B92B4F00A8CEEEB2F39DA14599A6C373BFCC08B3E3FEF107EEFDE8B72D44CE375FBBAE98C4E5F96335AB51D09287F9F17696C09F0EC5543A295D8BD17A15D4A424CC4B798D8C57339EB8A90E72EA65A8A39E03AE258AF2FA3AC7C8F2573CD9293A6CF0B476C7941C5024B4FF9F7C2B9DC47C53E43E709DA179917BD706EF67751E8FF889E3FA73FA3E43CD947118B21C611B7710FF0A39B2CDDA1AC78FE84EE79BCAF03D759F1DD57627FDA5BEE5A4FF03A295EBD749D0F1815EF2E42541C186254B3FC134A50E61528B8F18A0265989BD701AA082A21210C89C52E2B7F9111B10C62AD729DF7DED33B946C8B877317FF749DABF00905E44983C59724C44A883B15D91E750D74E3E5F92F69164C3ED05598E5C52C537AE7CD34D0451064D8824CCFA38734997E366F632F8C261FE5531AB553C1C6F6A47C504ABB429DF4902E3354AA1636DF1460F9FB7318CB5D3F788FE1B6524C01C8C72CC006C8753EA1A86ACE1FC25D8358D5744BCDDD5596C625AE4D1FD270FBD9CBB608B77F4E55AD9B749FF916F87C428F21FA458D50DDA6C2886F9150129A5538AD57ADA1D79AFF6A7A56C6BFEAB1A8E9AF30E863F869C7B9CC7E35A091440B1D3778FC7DCE2956058B3CB7D4AD2BFCFAFF4DA8F5281BACAC3B85C47418B274BF4B13CB4ED09AC4D4D0502BD2DFF2113BA2B67CC4089922545341894FDD744B6C758B0FD720993DBED5D612D7AA880AEC1435FEA17EE1B6B18A02A5D846B59FE0DEB0C5B0913625724D9B82667C8B8496D03CC85710965A388BBACBA2DEA255475B770128F284FEE212136772ABF626CC1B4BD0F824E487B187978A3719FED56CFEBF739D8DEF9593EC345D6F50EE67E1AEDE9F8E8D7B9F959EA17D11ED9DDAFAF45F55D5C6C07E6D55F73BC41596F25DFC24D8FBBD36E286EBB18EA5403BFE10307FDE7B8D8AF6F2BF8DC718EE57945E58E9794C516B08A444AE69BBE5BD638B9FAA5DF231CA9706791A8AB285EE347D16D59B01BA602CC6E3799BCD8F5F267736F304BD4AEEE50FD62BF58B7DF1906693A37789B9B34DB3674BEC36E1DFA727DD877D7CE36D9115623759E8A3A3583D4C116222DC542F3D9AC6DB469DF9E587D8286F71A4376C3711D731E6A67A59442C4CF9C62DB5B092ADE7DA215BCFBF34FA5EAC975B123DA7D677193B4F625AD478925625BFE556999CF22B13841815CCE65BA010A38EC1E6DB46AA30361BC7A6D3B25B47C6705B6F1E21A33FA1439FC5D92EB3DD6BF56BB8D595367EA05D1EB278AD4C649F156CD5F12096B1252243D6B2A4FF5CF25F0DF8E5D3BBE9179CC0627DC42D999D9B067C9FDA97F793EAD611DA8834E9B5AC3CB3FB036B61063717CB59F26F4FBF4E436EBD9E92E41E5E72F592FA7A1D6425F2759745E5BD46A18FB0B73DE79274C3C4573F032C85D79302B581EF19A45D979633CEFF8B420E1C0F18C3F9186F18009C467135341166A1754D9F45D58E4917DBEA1D94693EF6CDC2A8A1A27992FE0797CE32CEFD8A3A09A4867BE9E41542C19DE7FF6CA594A4D3A25A4990E8A3966CDFB9F4729E737B93B9C2BE21575812F731BB20A3C70BAFF3ABC8DBB667B76D96680D90F1E4121305EB58F48C89C8CA094F9AF728BE4319214C856E39919FBC688F1F9C4AA4E4DEBF08E230A12F9FC9C4ABC9A4211D77806C00F518384B12F03AB9F4B2C2947C7FF1C2A2A8445C4D41893D69721F66310A6807D93D711D2A63CB0EF04AFFFE1B14858F286306F87D07465EE2A328623A7C6B220417799EFA61C553560EE8B2931FF16D1238DAB361C279446C313077C31DE627D6DD73F777D21C208834E2DC42A42B611EE6E9C989CC2C6CDF31F192F2130ECCAA1C0B569814B23308133FDC79910E03A193D287801F1B9454A7A3882D6FD00E25A5D5D79174F0F07414C1B7755168BD6244432F31FC811A88BFC0E99A96BFE4FC98017B21A80AA93194C35E02A39C9209C7A0436756F2A29CFAD0D1671017F9C48BD624A88FBF080C2687A92CCD8DFAC86687F09C89445E7F4CB0B94605722EFCFA2BAE4B2FF7BD405EFD60131C8C65A854B89B701F3EBC6569AA548C1988C01CC64A4A0681A605CE0C31468B662FEDCC169CEB6F61D330CB34C60B9A9E910901539F76260C22C3701C661025652A06E2B83E2F2331BD490F9ADB33FDF18C4EA11A6F15A543C484ADE021392BC9D2917B3016F3C9167FC4A583F7C079974EDE8FEAD03AB0829CACA9031F22924AFACC2E924A7A1C8548CAD93790F59A541C238E6DCED8CA79EA0E4ECDE53DE1191AB112CE38DB8914488911B09841A4841C17C47028E1C57C56DC2462CDFD25F411ED8CF106350AF3051CD4643D8688839087ECE0B166B5D55B6E965C61A95198CF91A9C97A0C2E4CC895413C8612672D8F690EDACA71411F63CE13AD52CFCA846D60E6DA4A6CD4B31F3CFEE86253279ACA0C18EE41E3EB349351A5C69E541F1F7DC9519316C99BEC97280825E00D2A782B9ABB4E9BDB127D8F244B3C0892F495003482D4D1BD8E04AAFA9360ACC9F8F404BE1A0BB2B4EF00D51EE992C0508BDA359D3A221022E58C68A4C60C11F2A904844DB343EF0246D6584A48ED02B8030C3DC52FC1201EAC0340A3422A08D496758020D96E158C36FF2F0061744C909AF66413F38EB22481A8F25D59288A78AB1F92D9E8CA3B31305A351537BFFCE40C262E7C7A2C4F5C934A3148A6304853CDD6CC5C9D3BE9A45E8F792B3E7205980EE7050C330322FAD4387589803217300531149F232804411FA6360C54B302C1D8469D4C80816906568BF86062A88FB3CBF4E88EB59A475BE599105BAF218C36BE3A296D84CFDC40DA686285E6D14283999807F90C75B10F691427C11584E9885899C6AC58A230FE5C47163844358DAC88A7856562E8622D26D116066FBA1AD1500088AF4CE357C573C9E0ECBB2D071033E837FB79EC847802549EBD6EDF6BB2F365F06E17929AE9031BDD21DE941C00A4FB32DAB65ED5A55F9B07EB15502376FDDEAB8E603135639B27CEA62E187BF9CDC6BE846A5CC358F91C5DC55D241D096F21B107115AEBD23E55CDCCB23EED9D579EB9BB0C62E93569170A2CD9C970C24653E61859C7930EE56F61C32B56CF3D014C484BCF2B3CC5B8DCF857FD6595977B3A65FD5E2FF232F8F38FCB34DAC74967FC1186D516596541B54FCD21B555545948ED5373484C99541614F3D81C565B089505D53E358744CBF47134270F2DE8549FC8E788543F3287D19C776661348FCC61D455485910F5137308DC39651610D720C35BAF049590C257920A0A06515469238507ED7C1F7557EEC50C941DE80791981E0B62C90B9E15EA8023338A796C0E8B1C8766019167164A4ECB6B723A4E9F1EA7623241598E3C70AC1686D59E48E4740B3CA7A8A1500F87B190929210CD385ADA046CEDD514EA383DAFEA72863C14F98C890E425BAB9085D23EB580C47ED6C501631B0E46763AB6FABDCD7C13ABEF69ECA1DE539B7C26ADC8993438DB08C36A0BFDB1A0DAA70723029A90461FF6033B6303D6833DE7605755A48EF33FE503F3FEB25FB6DE0CB0A768B8F9E88ED7C0F048D539CE7D35CF2C6C2B733896B3B09A43B31A2A57B5E63832574F2CE84C0AC971A4260F6D54BDFA6298979B502E88A583D1D7D67F259B03261330D2D28364567B2C3EC0AEF308F670F53FB285039FF018D575D409F1DEFE03E8DEE54448112995275117A8D2416D4B44B1F0DAA7D3AE4996928936A7319240D0730D3DA401EE3B9707FE9F330A24A3310EF79B1329F6AC873A82613D5A8D880BED01D58D7490C60C338FB9BAA56518F84D72F3F060E487E684C611207220C95E82C09E7304B146D84A8CB0B81D23B47764E6AB3D98368EFCD1C36CF60208770583C34C0D192E3C0CD6A5D1411B235B626B748E6A5B24A591C557E8E8CD13FA3F4D233729DCEEFB47A59C6EFD4A59E02A7D0C83329FBB79CE0B143766EF6FD165145644262FBCF792F01EE5455D09C57D797AF652B8BBF470EE115DE579C0C5FEE0CB447976CD7E9F675892B8B30C93E50521E2159EC9A397F90F5EF69BD87BFA2D0BADCF359D83804957710E82265EB7390898701FDC309AB1E5DF0641E24A6C0D82C45E7F5949DDF04B2F03FCBBA8CA63E950B1BCE0B1874202617AEB5B7D26514626D96B433519107FD1621F168A772B7E85FA2255A70C9517465F27017A3A77FF51F57AED5CFFF596767CE1541C7BED9C3AFFB41D5DBC86CD7470D26FC8D86AD7623038ED683EBAED3D7C3D747ABCBBF026D16AF6FABB41022B5E711774561EB5842FD708B5C0B7D73572E35970E5BB60F4A29FBD37D090A61BA41FFDEE7E331D9C761C34BC78679CE03E06705E99729DFF0EB249B49CB9766C90928FB718972BFC1BCB51DB75909BE12E221B3419F9DE19637F497B0E990A7B6BD930F6F2379375EA964A9C99E2D387E50296D809A853B14BDC8434895919CD1CCCE4DCE1ACE89297F44CC21AF15E9E61D67A329F3F8499EAA4E632D7D3CCA65ED29D3407A968AAACE3DCF7A84CC2923937A7CBEAA16AABC8D5AF9F426E94B9C6F96F02396C6739E91A6BBC08D64CA6469D1D5CE29E8A49A466BCB8797FF59D61E5DCB7643EFD365B55E7C7AA8E54534263A6BA51F0E79E16693AC7BABCF45114A2B3297D3FBCD8FDBC7C07BF28320F1C4FC4F5E32A603F73457965599B990BEE9AB372E46AF45F6501FA310ACE9388F1FCF5E5E7AC27AF8C8BF71AF240CBC7F72E34AA2E6434A0F2FC9042DC0BD5813F8A12A5373D0ABF2F58E47D391F33BF2CD9FA99C545A947C1F6710AB4CFEE6C745F9C58455427733747536C7DBC6D2A294DCA0032ADB77D241B55F05397C3DBA91A964C1F6F9D3137F7E7F70716DC5FDA15D8153E1FA1D4F9BCA10AF88B218BE0FB44C18A43285E2E579713F9C6977AA6F6BE8D808A9EA0FE96E1DC0DEE52CCE63A860A567414E137B220416F9EAB6003050345C824AE2681260D2AD840B1645DB5F3AE62E7E014A01AA8E258D4E84AE3D016D51874A5D749281A479049459B94C4020B096B2BA9771652D7CC465D9E17AEB5AE2FB5AE1C082CEB0A9462D7546257C1076A864265DA7555DA55E0A1A29C600D776D0977D5084CF1776188692BBC0B9688AB2229DB53C9FF30BDD437222C5EC35D51B57DA1894D53A4BD1B55389E20F6046E9238A012ECAA92EB8AA251AA0537D3913E1B3C51658C71B4F2EA26486B628F7267F59D1A875639DD7ADAF308F59435D1D535D01714EC11EB9DF77531FC4280AD6031DAF4341A6B5CD0BCAFD04E39BDF12B96AB6A944FEC472D2A92CB9F8CE32D1E96AF30AE4F96E0ED651E6E5B106B0C33413EB7B9A3EF5C27F729D9660A189157842330EFB18909CA22075911DE7B7E819BCB6A0761B2759D9FBC688FCAB33B7728B84E3EEE8BDDBEC05346F15DC439AE72AFAA1BBF2ABBCEE3BCFE589DA8CAC7980246332C8FED7C4CFEB80FA380E27D251F4C8240949BE0E6B453C9CBA23CF5B47DA6903E48453220400DF9E8DEFD338A771106967F4C36DE23EA83DB971CBD435BCF7FBE69BEFC878174338227FBFA4DE86D332FCE1B186D7FFC2F96E1207EFAFEBFCAA22372DFB50000, N'6.4.4')
GO
