-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2021 lúc 07:55 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tms`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2020-07-08 06:38:36', 2, 'u', '2020-07-08 06:53:45'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2020-07-08 06:43:25', 1, NULL, '2020-07-08 06:52:44'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2020-07-08 06:44:39', 2, 'a', '2020-07-08 06:49:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `EmailId` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2020-07-08 06:30:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2020-07-08 06:31:38', NULL),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2020-07-08 06:32:41', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Issue` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 06:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 06:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 06:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 06:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 06:35:06', NULL, NULL),
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2020-07-08 06:36:03', 'Ok, We will fix the issue asap', '2020-07-08 06:55:22'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2020-07-08 06:56:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'Điều kiện và điều khoản', '<p style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\nQuý khách vui lòng đọc thật kỹ mọi điều khoản sử dụng trước khi thực hiện giao dịch. Vui lòng không sử dụng dịch vụ trên website, đặt phòng thông qua website và thông qua số điện thoại tổng đài của chúng tôi nếu quý khách không đồng ý với  tất cả các điều khoản sử dụng của website.<br>\r\n1.    Đối tượng sử dụng website<br>\r\nQuý khách tham gia sử dụng dịch vụ của web phải đảm bảo đã đủ 18 tuổi,có đủ điều kiện pháp nhân, có nghĩa vụ ràng buộc pháp lý, đủ năng lực pháp lý để thực hiện giao dịch.<br>\r\nQuý khách chỉ sử dụng website này để thực hiện việc đặt phòng hợp pháp cho quý khách hoặc cho người khác với điều kiện được sự cho phép hợp pháp của người cần sử dụng. Mọi thông tin được quý khách cung cấp trên website phải đảm bảo : trung thực, chính xác,hiện thời và hoàn chỉnh.<br>\r\nVới những quý khách có tài khoản , quý khách cần bảo vệ thông tin tài khoản của mình.Phải chịu trách nhiệm về  việc sử dụng tài khoản của quý khách  bởi quý khách hoặc người khác.<br>Chúng tôi có quyền từ chối khách hàng sử dụng dịch vụ mà không cần phải nêu lý do từ chối. Một số lý do từ chối khách hàng đặt phòng thường là : do khách sạn yêu cầu, vi phạm điều khoản sử dụng,nghi ngờ trộm cắp, gian lận, nghi ngờ vi phạm pháp luật,nghi ngờ do cung cấp thông tin sai lệch,sai sót,thẻ tín dụng, tội phạm truy nã….<br><br>\r\n2.    Xác nhận thông tin đặt phòng<br>\r\nSau khi quý khách thực hiện việc đặt phòng trên website hoặc trực tiếp hay gián tiếp qua các thiết bị khác như : điện thoại, email…Chúng tôi sẽ gửi một email xác nhận thông tin đặt phòng của Quý khách. Đó là việc xác nhận thông tin đặt phòng. Nhưng thông xin được xác nhận lần cuối cùng chính xác nhất về việc đặt phòng là khi quý khách hàng đã thanh toán đầy đủ tiền đặt phòng theo quy định của chúng tôi về thời gian, phương thức thanh toán…đã được thể hiện trong email xác nhận trước đó.Việc đặt phòng có thể bị  hủy bỏ nếu quý khách không thực hiện thanh toán theo yêu cầu của chúng tôi,chúng tôi không chắc chắn bất kỳ thông tin đặt phòng nào cho đến khi chúng tôi gửi email xác nhận lần cuối.<br>\r\nQuý khách cam kết là các thông tin chi tiết quý khách cung cấp cho chúng tôi về việc đặt phòng là đầy đủ và chính xác.<br><br>\r\n3.    Thực hiện thay đổi cho thông tin đặt phòng<br>\r\nNếu muốn kiểm tra lại hoặc điều chỉnh, hủy bỏ việc đặt phòng của quý khách, xin vui lòng xem lại email xác nhận đặt phòng và làm theo hướng dẫn trong đó hoặc vui lòng liên hệ số điện thoại : 123-456789.<br>\r\nChúng tôi sẽ cố gắng để hỗ trợ Quý Khách một cách tốt nhất, tuy nhiên chúng tôi không đảm bảo  mọi yêu cầu thay đổi sẽ được thực hiện.<br><br>\r\n4.    Cách thức thanh toán<br>\r\nQuý khách có thể lựa chọn 1 trong những phương thức thanh toán sau:<br>\r\nThanh toán Tiền mặt tại Travelnam : N7 - Travelnam , quận Liên Chiểu, Thành phố Đà Nẵng<br>\r\nTravelnam sẽ phân công người trực tiếp thu tiền theo địa chỉ do Quý khách cung cấp : Hiện Tại Travelnam chỉ thực hiện thu tiền cho các khách hàng có địa chỉ tại Đà Nẵng.<br>\r\nThanh toán bằng Chuyển Khoản Ngân Hàng<br>\r\nThanh toán bằng Thẻ tín dụng <br>\r\n<br>\r\n5.    Thông tin website<br>\r\nChúng tôi nỗ nực đảm bảo mọi thông tin hiển thị trên website với độ chính xác cao nhất. Tuy nhiên đôi khi do một số thay đổi từ phía các nhà cung cấp phòng nên thông tin trên web không đảm bảo là chính xác tuyệt đối và không có bất kỳ lỗi nào. Chúng tôi bảo lưu quyền thay đổi thông tin hiển thị trên trang web (bao gồm Điều khoản và Điều kiện này) bất kỳ thời điểm nào mà không phải báo trước.<br>\r\n6.    Hình Ảnh trên webdulich<br>\r\nCác hình ảnh được sử dụng trên website trong phần mô tả khách sạn hoàn toàn do khách sạn cung cấp. Một số hình ảnh có thể sai lệch với điều kiện thực do thời gian chụp ảnh đã kéo dài trước đó. Chúng tôi không chịu các trách nhiệm liên quan đến những sai khác này (nếu có).<br>\r\n<br>\r\n7.    Trách nhiệm<br>\r\n\r\nNhững qui định hay giới hạn được miễn trừ :<br>\r\n    Chúng tôi sẽ không chịu trách nhiệm với bất kỳ thiệt hại, mất mát, trách nhiệm, khiếu nại hoặc khoản phí nào (gồm các nguyên nhân sau: sự bất cẩn gây hậu quả trực tiếp hay gián tiếp) được phát sinh từ trang web chúng tôi liên quan đến những sản phẩm hay những dịch vụ được thực hiện trên trang web này.</p>'),
(2, 'Chính sách bảo mật', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Travelnam có thể điều chỉnh lại Chính Sách Quyền Riêng Tư này để phản ánh những thay đổi trong luật pháp, trong thông lệ thu thập và sử dụng Dữ Liệu Cá Nhân của chúng tôi, trong các tính năng trên Website của chúng tôi. Nếu chúng tôi đưa ra những điều chỉnh làm thay đổi cách thức chúng tôi thu thập hoặc sử dụng Dữ Liệu Cá Nhân của quý vị, những thay đổi đó sẽ được đăng tải trong Chính Sách Quyền Riêng Tư này và ngày hiệu lực sẽ được thông báo ở đầu Chính Sách Quyền Riêng Tư này. Do vậy, quý vị nên xem lại Chính Sách Quyền Riêng Tư này định kỳ để cập nhật những chính sách và thông lệ mới nhất của chúng tôi</span>\r\n										'),
(3, 'Giới thiệu', '<p style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\nTravelnam là hệ thống đặt dịch vụ du lịch trực tuyến, tối ưu các công cụ tìm kiếm và kết nối các đối tác du lịch nhằm tạo điều kiện cho khách hàng các lựa chọn đặt phòng khách sạn, đặt tour du lịch đa dạng nhất. Website hữu ích dành cho người Việt, giúp cho mỗi chuyến du lịch của người bạn trở nên dễ dàng hơn.<br>\r\n    Nghiệp vụ tư vấn trong lĩnh vực du lịch chuyên nghiệp<br>\r\n    Tốc độ xử lý thông tin nhanh chóng<br>\r\n    Thái độ phục vụ của đội ngũ nhân viên nhiệt tình, năng động<br>\r\n    Phương thức thanh toán linh hoạt, dễ dàng.<br>\r\n<b>1. Dịch vụ của chúng tôi</b>\r\nTravelnam cung cấp các dịch vụ du lịch chuyên nghiệp như: đặt phòng, tour du lich, đặt vé máy bay, làm visa,  công nghệ thông tin và cung cấp thông tin quảng bá – truyền thông du lịch.\r\n<br><br>\r\n<b>2. Sứ mệnh</b> <br>\r\n    Sứ mệnh của Travelnam là mang tới cho khách hàng những chuyến du lịch với tiêu chí” CÙNG NHAU TRẢI NGHIỆM CUỘC SỐNG” cùng như trở thành cầu nối tin cậy giữa du khách với khách sạn và các đơn vị cung cấp sản phẩm du lịch khác.<br>\r\n    Xây dựng một thương hiệu vững mạnh và phát triển thành công trong việc phát triển du lịch Việt Nam, triển khai hoạt động thương mại điện tử.<br><br>\r\n\r\n<b>3. Giá trị cốt lõi</b><br>\r\n    Giá trị cốt lõi của Travelnam là: Uy tín, Chất lượng, An toàn, Tiết kiệm, Văn minh, Chuyên nghiệp, Đoàn kết và Sáng tạo.<br><br></p>\r\n  <b>4. Cam kết khách hàng</b><br>\r\n    Travelnam luôn nỗ lực thương lượng, đàm phán trực tiếp với các khách sạn và nhà cung cấp dịch vụ du lịch, mở rộng hợp tác toàn diện với các đối tác chiến lược trong và ngoài nước,để đảm bảo giá hợp lý.<br>\r\n    Sử dụng và cải tiến công nghệ tiên tiến nhất để mang đến sự thuận lợi, dễ dàng và tiện ích cùng chất lượng dịch vụ tốt nhất cho các khách hàng. Xây dựng sản phẩm phong phú, đa dạng.<br>\r\n    Lấy ý kiến khách hàng làm trọng tâm cho hoạt động cải tiến chất lượng của công ty, nhằm nâng cao hơn nữa sự tin tưởng của khách hàng đối với mỗi dịch vụ , xây dựng và duy trì thương hiệu của công ty trong lòng khách hàng.'),
(11, 'Liên hệ', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address N7-Travelnam , Quận Liên Chiểu, Thành phố Đà Nẵng\r\nSố điện thoại : 123-456789</span>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PackageType` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `PackageLocation` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PackagePrice` int(20) DEFAULT NULL,
  `PackageFetures` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Combo du lịch Đà Lạt 3 ngày ', 'Gói cá nhân', 'Đà Lạt', 2699000, 'Wi-Fi miễn phí', 'Du lịch Đà Lạt là một thành phố mộng mơ,với vẻ đẹp lãng mạn không kém phần mơ mộng, Khách Du lịch Đà Lạt thường gọi nơi đây bằng nhiều cái tên : thành phố ngàn hoa, thành phố sương mù, phố núi Đà Lạt , hay tiểu Paris, mỗi cái tên đều chất chứa bao tình yêu.', '1581490262_2_1.jpg', '2021-12-08 01:21:58', '2021-12-11 05:00:00'),
(2, 'Du lịch Phú Yên - Quy Nhơn - Kỳ Co - KDL Hầm Hồ', 'Gói gia đình ( Nhóm 4 Khách )', 'Phú Yên - Quy Nhơn - Kỳ Co - KDL Hầm Hồ ', 6099000, 'Wi-Fi miễn phí, bữa sáng miễn phí', 'Quy Nhơn - Phú Yên 4 ngày 3 đêm khởi hành từ Đà Nẵng 2021 - Bình Định từ lâu đã luôn nổi tiếng với những địa điểm đẹp và nổi tiếng, không chỉ nổi tiếng với Gềnh Đá Đĩa, Đầm Ô Loan… Với tour du lịch Bình Định Quý khách còn được khám phá rất nhiều các danh lam thắng cảnh đẹp khác.', 'BHUTAN-THIMPU-PARO-PUNAKHA-TOUR-6N-7D.jpeg', '2021-11-08 05:37:40', '2020-11-12 12:09:01'),
(3, 'Du lịch Hà Nội - Sapa - Bản Cát Cát - Fansipan (2 ngày 1 đêm)', 'Gói cá nhân', 'Hà Nội - Sapa - Bản Cát Cát - Fansipan', 12000000, 'Wi-Fi miễn phí, bữa sáng miễn phí', 'Hà Nội - Sapa - một thị trấn nhỏ cổ kính nằm trong lòng dãy Hoàng Liên Sơn là cái tên đã đi vào tâm khảm của nhiều du khách. Một mảnh đất bình yên nhưng ẩn chứa biết bao điều kỳ diệu của tạo hóa. Nơi đây có những ngọn núi, quả đồi trùng điệp trong sương mù,… Sapa đẹp như bức tranh sơn thủy hữu tình được sắp xếp theo một bố cục hài hòa.', '1583140977_5_11.jpg', '2021-11-08 06:41:07', '2020-11-10 12:10:27'),
(4, 'Tour Du lịch Cam Ranh - Đảo Bình Ba ', 'Gói cá nhân', 'Cam Ranh - Đảo Bình Ba', 4000000, 'Wi-Fi miễn phí', 'Du lịch Đảo Bình Ba - Đảo Bình Ba có lẽ đó là một cái tên khá lạ lẫm đối với nhiều người, nhưng đối với dân du lịch bụi hay phượt thì đây là một điểm du lịch rất tuyệt vời. Và chuyến du lịch đảo Bình Ba sẽ không làm bạn thất vọng bởi vẻ đẹp hoang sơ kỳ bí của nó.', 'images (2).jpg', '2021-12-08 05:45:58', NULL),
(5, 'Combo Phú Quốc', 'Gói cá nhân', 'Phú Quốc', 9000000, 'Wi-Fi miễn phí, bữa sáng miễn phí', 'Phú Quốc là hòn đảo lớn nhất Việt Nam, nằm trong vịnh Thái Lan. Đảo Phú Quốc cùng với các đảo nhỏ hơn ở lân cận và quần đảo Thổ Chu nằm cách đó 55 hải lý về phía tây nam hợp thành thành phố Phú Quốc thuộc tỉnh Kiên Giang. Đây cũng là thành phố đảo đầu tiên của Việt Nam', 'unnamed.jpg', '2021-11-02 05:49:13', NULL),
(6, 'Du lịch Vũng Tàu', 'Gói gia đình ( Nhóm 4 Khách )', 'Vũng Tàu', 5099000, 'Wi-fi miễn phí, nước uống miễng phí.', 'Đến với Tour Vũng Tàu du khách cũng sẽ bị cuốn hút bởi phong cảnh của nơi đây, được thả hồn vào những con sóng nước, được thưởng thức những món đặc sản miền biển với giá cực kỳ hấp dẫn. Cùng tham khảo các tour Vũng Tàu của Du Lịch Việt để chọn cho mình một chuyến du lịch phù hợp, đầy hấp dẫn và thú vị.', 'download (2).jpg', '2021-12-08 08:51:26', NULL),
(7, 'Du lịch Hạ Long', 'Gói gia đình ( Nhóm 6 Khách )', 'Vịnh Hạ Long', 19500000, 'Wi-fi miễn phí, nước uống miễng phí.', 'Du lịch Hạ Long - Vịnh Hạ Long một trong Bảy kỳ quan thiên nhiên thế giới mới, và được Thế giới công nhận là di sản thiên nhiên thế giới. Chính bởi vẻ đẹp hùng vĩ và nguyên sơ, tour du lịch Hạ Long luôn là một sự lựa chọn hàng đầu được nhiều du khách cả trong và ngoài nước tìm đến để khám phá tham quan và du lịch.', '95995.jpg', '2021-11-18 05:54:42', NULL),
(8, 'Tour Du lịch Đà Nẵng - Bán Đảo Sơn Trà ', 'Gói gia đình ( Nhóm 4 Khách )', 'Đà Nẵng', 4000000, 'Wi-fi miễn phí', 'Được mệnh danh là ‘’thành phố đáng đến’’ với dòng sông Hàn thơ mộng với cây cầu Rồng biểu tượng của Thành phố biển du lịch Đà Nẵng - nơi mà quý khách có thể cảm nhận được sự pha trộn giữa khí hậu miền Bắc, miền Nam. ', 'download (3).jpg', '2021-01-28 06:05:24', NULL),
(9, 'Du lịch Côn Đảo', 'Gói cá nhân', 'Côn Đảo', 1000000, 'Wi-Fi miễn phí, bữa sáng miễn phí', 'Côn Đảo nổi tiếng với vẻ đẹp hoang sơ, Côn Đảo ngày nay là một trong những điểm đến du lịch hấp dẫn du khách nhất ở Việt Nam cũng như quốc tế.', '1540382781_shutterstock_661867435.jpg.jpg', '2021-12-08 06:07:48', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:33:20', NULL),
(2, 'Test', '1987894654', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-07-08 06:35:06', '2021-05-11 04:37:41');

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Chỉ mục cho bảng `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Chỉ mục cho bảng `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
