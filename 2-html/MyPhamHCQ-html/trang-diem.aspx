<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="trang-diem.aspx.cs" Inherits="my_pham" %>

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
    <div class="id-wrap-main mgb-20">
        <div class="id-product">
            <h3>Trang điểm</h3>
        </div>
        <div class="pull-right">
            <span>Hiển thị</span>
            <select class="hienthi">
                <option value="value" selected="selected">12</option>
                <option value="value">9</option>
                <option value="value">6</option>
                <option value="value">3</option>
            </select>
        </div>
        <div class="pull-right">
            <span>Sắp xếp theo</span>
            <select class="sapxep">
                <option value="value" selected="selected">Giá (Thấp > Cao)</option>
                <option value="value">Giá (Cao > Thấp)</option>
            </select>
        </div>
    </div>
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
                <div class="insert-cart">
                    <img src="assets/images/in-cart.png" alt="" />
                </div>
            </div>
        </div>
        <div class="clr"></div>
        <div class="id-wrap-main">
            <div class="pager">
                <a href="#" class="current">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
            </div>
            <div class="pull-right">
                <span>Hiển thị</span>
                <select>
                    <option value="value" selected="selected">12</option>
                    <option value="value">9</option>
                    <option value="value">6</option>
                    <option value="value">3</option>
                </select>
            </div>
        </div>
    </div>
</asp:Content>
