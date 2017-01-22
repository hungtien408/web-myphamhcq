<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="trang-diem-chi-tiet.aspx.cs" Inherits="trang_diem_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>SuriCosmetics</title>
    <meta name="description" content="SuriCosmetics" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <h3>Trang điểm</h3>
        <ul>
            <li><a href="#">Kẻ mày - kẻ mắt</a></li>
            <li><a href="#">Kem lót mắt</a></li>
            <li><a href="#">Phấn mắt</a></li>
            <li><a href="#">Mascara - Fixer</a></li>
            <li><a href="#">Dưỡng mi</a></li>
            <li><a href="#">Son thỏi</a></li>
            <li><a href="#">Son lì - Son bóng</a></li>
            <li><a href="#">Son kem - Son Tint</a></li>
            <li><a href="#">Son dưỡng - Tẩy môi chết</a></li>
            <li><a href="#">Kẻ viền môi</a></li>
            <li><a href="#">Kem lót - Phấn/Kem nền</a></li>
            <li><a href="#">Kem BB - CC</a></li>
            <li><a href="#">Che khuyết điểm</a></li>
            <li><a href="#">Má hồng Blusher</a></li>
            <li><a href="#">Phấn tạo khối Highlighter</a></li>
            <li><a href="#">Cọ - Mút - Kẹp mi</a></li>
            <li><a href="#">Đặc trị mụn</a></li>
            <li><a href="#">Tẩy trang</a></li>
        </ul>
    </section>
    <section>
        <h3>Chăm sóc da</h3>
        <ul>
            <li><a href="#">Sữa rửa mặt</a></li>
            <li><a href="#">Tẩy tế bào chết</a></li>
            <li><a href="#">Mặt nạ mask</a></li>
            <li><a href="#">Nước hoa hồng</a></li>
            <li><a href="#">Sữa dưỡng</a></li>
            <li><a href="#">Tinh chất</a></li>
            <li><a href="#">Kem dưỡng mắt</a></li>
            <li><a href="#">Xịt khoáng Mist</a></li>
            <li><a href="#">Kem chống nắng</a></li>
            <li><a href="#">Đặt trị mụn</a></li>
            <li><a href="#">Dưỡng trắng - trị thâm nám</a></li>
            <li><a href="#">Se khít lỗ chân lông</a></li>
            <li><a href="#">Chống lão hóa</a></li>
            <li><a href="#">Dưỡng ẩm sâu</a></li>
        </ul>
    </section>
    <section>
        <h3>Chăm sóc body</h3>
        <ul>
            <li><a href="#">Kem giúp giảm sẹo</a></li>
            <li><a href="#">Sữa dưỡng thể </a></li>
            <li><a href="#">Sữa tắm body</a></li>
            <li><a href="#">Kem dưỡng trắng</a></li>
            <li><a href="#">Kem chống nắng body</a></li>
            <li><a href="#">Kem chống rạn da</a></li>
            <li><a href="#">Kem tẩy lông</a></li>
            <li><a href="#">Tẩy da chết body</a></li>
            <li><a href="#">Kem dưỡng ẩm</a></li>
        </ul>
    </section>
    <section>
        <h3>Thương hiệu</h3>
        <ul>
            <li><a href="#">Bath & Body</a></li>
            <li><a href="#">Beauty Korea</a></li>
            <li><a href="#">Beauty Treats</a></li>
            <li><a href="#">Carenel</a></li>
            <li><a href="#">The face shop</a></li>
            <li><a href="#">Skin food</a></li>
            <li><a href="#">Laneige</a></li>
            <li><a href="#">Tony Moly</a></li>
            <li><a href="#">Missha</a></li>
            <li><a href="#">E.L.F</a></li>
            <li><a href="#">Etude house</a></li>
            <li><a href="#">Innisfree</a></li>
        </ul>
    </section>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="detail-sp">
        <div class="top-sp">
            <div class="dt-left">
                <img src="assets/images/sp.png" alt="" />
            </div>
            <div class="dt-right">
                <p class="from">Farmisa<span> / Thổ Nhĩ Kỳ</span></p>
                <h3>Son Lì dưỡng môi màu hồng 04 - 4gr</h3>
                <span>True color Lipstick</span>
                <p>True Color Lipstick Farmasi là dòng son với nhiều màu sắc ấn tượng, tha hồ để các bạn lựa chọn theo sở thích, trang phục hay tâm trạng. Loại son này đặc biệt thích hợp cho ban ngày, tạo vẻ tươi trẻ và quyến rũ.</p>
                <p class="price">370.000đ <span>360.000đ</span></p>
                <div class="number">
                    Số lượng:
                    <div class="sp-quantity">
                        <div class="sp-btn" id="sp-minus" data-id="sp-minus">-</div>
                        <div class="sp-input">
                            <input type="text" class="quntity-input" value="0" disabled="disabled" />
                        </div>
                        <div class="sp-btn" id="sp-plus" data-id="sp-plus">+</div>
                    </div>
                </div>
                <div class="btn-in-cart">
                    <a href="#">Thêm vào giỏ</a>
                    <a href="#">Mua ngay</a>
                </div>
                <img src="assets/images/like-fb.png" alt="" class="like-fb" />
            </div>
        </div>
        <div class="clr"></div>
        <div class="bot-sp">
            <div class="id-wrap-main mgb-20">
                <div class="id-product">
                    <h4>Thông tin sản phẩm</h4>
                </div>
            </div>
            <div class="wrap-content-sp">
                <p>
                    Farmasi là dòng mỹ phẩm nổi tiếng xuất xứ từ Thổ Nhĩ Kỳ. Vượt qua ranh giới quốc gia, Farmasi đã có mặt tại 118 quốc gia để đem đến những sản phẩm chăm sóc sắc đẹp chất lượng cao với mức giá tốt, phù hợp với nhu cầu của khách hàng. Sản phẩm của Farmasi luôn đảm bảo an toàn tuyệt đối, bởi tiền thân của hãng mỹ phẩm này là một công ty dược. Mỹ phẩm của hãng thích hợp cho mọi loại da, kể cả những làn da nhạy cảm nhất. Sản phẩm khi thoa lên môi sẽ ra màu sắc đậm và giống gần như hoàn toàn màu son nhìn thấy được mà không bị phụ thuộc quá nhiều vào màu môi.                   
                    <br />
                    <br />
                    True Color Lipstick Farmasi với các màu sắc đặc trưng giúp cho đôi môi bạn thêm quyến rũ một cách tự nhiên và ấn tượng. Không những thế, son môi Farmasi còn chứa các thành phần như Vitamin E, tinh dầu Mắc ca, Ngọc trai giúp cung cấp các chất dinh dưỡng cần thiết cho đôi môi của bạn.                   
                    <br />
                    <br />
                    True Color Lipstick Farmasi chức một thành phần cực tốt và giúp bền màu lâu trôi đó chính là Cao lanh, hay còn gọi là đất sét trắng. Cao lanh có độ bám dính rất cao đồng thời thúc đẩy sự hình thành các tế bào giúp đôi môi luôn căng mọng, mềm mịn. Son môi lâu phai khi thoa lên môi sẽ ra màu sắc đậm và giống gần như hoàn toàn màu son nhìn thấy được mà không bị phụ thuộc quá nhiều vào màu môi.                   
                    <br />
                    Với nhiều màu sắc ấn tượng, để các bạn lựa chọn theo sở thích, trang phục hay tâm trạng với các màu sắc đặc trưng giúp cho đôi môi bạn thêm quyến rũ và ấn tượng. Không những thế, Son Môi Lâu Phai True Color Lipstick còn chứa các thành phần như Vitamin E, tinh dầu Mắc ca, Ngọc trai giúp cung cấp các chất dinh dưỡng cần thiết cho đôi môi của bạn.                   
                    <img src="assets/images/sp-dt.png" alt="" />
                    <br />
                    <b>Thành phần chính:</b>
                    <br />
                    Mắc ca: Đóng vai trò tác nhân làm mềm da, tái tạo tế bào da, giữ ẩm và chống viêm trong khi linoleic acid giúp phục hồi chức năng lớp màng lipid bảo vệ da, ngăn chặn và làm giảm sự mất nước qua da, cân bằng sebum da. Acid palmitoleic kháng khuẩn, giúp phục hồi vết thương, vết phỏng da do cháy nắng hay nhiệt độ…                   
                    <br />
                    Ngọc trai: làm sạch, duy trì làn da mịn màng, tăng độ đàn hồi, giảm vết nhăn cho da, ngăn ngừa lão hóa, làm săn chắc cơ mặt.                   
                    <br />
                    Vitamin E: Giúp da không bị khô, duy trì sự tươi mới, cung cấp độ ẩm để đôi môi luôn căng mọng. Đồng thời cải thiện sắc tố trên da, bảo vệ da khỏi tác hại môi trường, kháng viêm.                   
                    <br />
                    <br />
                    <b>Công dụng:</b>
                    <br />
                    Màu sắc lên môi chuẩn đẹp.                   
                    <br />
                    Son bám chắc hơn, đều màu và lâu phai trong thời gian dài.                   
                    <br />
                    Giúp làn môi luôn mềm mịn, tươi trẻ, ngăn ngừa tình trạng khô môi, nhanh chóng làm dịu và chữa lành môi nứt nẻ.                   
                    <br />
                    Bổ sung Vitamin E giúp da không bị khô, duy trì sự tươi mới, cung cấp độ ẩm để đôi môi luôn căng mọng.                   
                    <br />
                    <br />
                    <b>Hướng dẫn sử dụng:</b>
                    <br />
                    Dùng cọ hoặc son thoa đều lên môi để làn môi bạn luôn rạng rỡ.                   
                    <br />
                    <br />
                    <b>Bảo quản: </b>Ở nơi khô ráo thoáng mát                   
                    <br />
                    <br />
                    <b>Dung tích:</b> 4g                   
                    <br />
                    <br />
                    <b>Thương hiệu:</b> Farmasi                   
                    <br />
                    <br />
                    <b>Xuất xứ:</b> Thổ Nhĩ Kỳ
                </p>
            </div>
            <div class="clr"></div>
            <div class="id-wrap-main mgb-20 mgt-20">
                <div class="id-product">
                    <h4>Gợi ý dành riêng cho bạn</h4>
                </div>
            </div>
            <div class="wrap-content-sp">
                <div class="pro-cate trangdiem-cate">
                    <div class="item">
                        <div class="wrap-item">
                            <div class="it-img">
                                <a href="#">
                                    <img src="assets/images/sp1.png" alt="" />
                                </a>
                            </div>
                            <div class="it-content">
                                <a href="#">Kem nền che phủ Missha M Perfect Cover BB Cream SPF42/PQ+++ </a>
                                <span>249.000đ</span>
                            </div>
                            <div class="new">new</div>
                            <div class="insert-cart">
                                <img src="assets/images/in-cart.png" alt="" />
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="wrap-item">
                            <div class="it-img">
                                <a href="#">
                                    <img src="assets/images/sp2.png" alt="" />
                                </a>
                            </div>
                            <div class="it-content">
                                <a href="#">Jeju Volcanis Pore Tonner - Nước hoa hồng trị mụn đầu đen Innisfree </a>
                                <span>249.000đ</span>
                            </div>
                            <div class="hot">hot</div>
                            <div class="insert-cart">
                                <img src="assets/images/in-cart.png" alt="" />
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="wrap-item">
                            <div class="it-img">
                                <a href="#">
                                    <img src="assets/images/sp3.png" alt="" />
                                </a>
                            </div>
                            <div class="it-content">
                                <a href="#">Sữa rửa mặt cung cấp nước HERB DAY 365 CLEANSING FOAM ALOE </a>
                                <span>249.000đ</span>
                            </div>
                            <div class="sale">-50%</div>
                            <div class="insert-cart">
                                <img src="assets/images/in-cart.png" alt="" />
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="wrap-item">
                            <div class="it-img">
                                <a href="#">
                                    <img src="assets/images/sp4.png" alt="" />
                                </a>
                            </div>
                            <div class="it-content">
                                <a href="#">Phấn má hồng SINGATURE BLUSHER </a>
                                <span>249.000đ</span>
                            </div>
                            <div class="insert-cart">
                                <img src="assets/images/in-cart.png" alt="" />
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="wrap-item">
                            <div class="it-img">
                                <a href="#">
                                    <img src="assets/images/sp1.png" alt="" />
                                </a>
                            </div>
                            <div class="it-content">
                                <a href="#">Kem nền che phủ Missha M Perfect Cover BB Cream SPF42/PQ+++ </a>
                                <span>249.000đ</span>
                            </div>
                            <div class="insert-cart">
                                <img src="assets/images/in-cart.png" alt="" />
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="wrap-item">
                            <div class="it-img">
                                <a href="#">
                                    <img src="assets/images/sp2.png" alt="" />
                                </a>
                            </div>
                            <div class="it-content">
                                <a href="#">Jeju Volcanis Pore Tonner - Nước hoa hồng trị mụn đầu đen Innisfree </a>
                                <span>249.000đ</span>
                            </div>
                            <div class="hot">hot</div>
                            <div class="insert-cart">
                                <img src="assets/images/in-cart.png" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

