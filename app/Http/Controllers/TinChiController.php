<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\VanBangModel;
use App\Models\LopHocModel;
use App\Models\DonViModel;
use App\Models\ToolsModel;
use App\Models\HocVienModel;
use Illuminate\Database\Eloquent\HigherOrderBuilderProxy;

class TinChiController extends Controller
{
    public function getTinChi($id_don_vi){
        $tinchi=new VanBangModel();
        $lophoc = new LopHocModel();
        $hocvien= new HocVienModel();
        $lophoc->id_don_vi = $id_don_vi;
        return view('auth.tin-chi.tin-chi',[
            'data'=>$tinchi->dsVanBang($id_don_vi),
            'hocvien'=>$hocvien->getDSHocVien($id_don_vi),
            'id_don_vi' => $id_don_vi,
            'ten_don_vi' => $lophoc->getTenDonVi()]);
    }
    public function getTinChiTheoLop($id_don_vi,$id_lop_hoc){
        $tinchi=new VanBangModel();
        $lophoc = new LopHocModel();
        $hocvien= new HocVienModel();
        $lophoc->id_don_vi = $id_don_vi;
        return view('auth.tin-chi.tin-chi',[
            'data'=>$tinchi->dsVanBangTheoLop($id_lop_hoc),
            'hocvien'=>$hocvien->getDSHocVien($id_don_vi),
            'id_don_vi' => $id_don_vi,
            'ten_don_vi' => $lophoc->getTenDonVi()
            ]);
    }
    public function putVanBang(Request $request)
    {

            $success = 0;
            $vanbang = new VanBangModel();
            $vanbang->id_van_bang = $request->input('id_van_bang');
            $vanbang->id_hoc_vien = $request->input('id_hoc_vien');
            $vanbang->ngay_cap = $request->input('ngay_cap');
            $vanbang->ghi_chu = $request->input('ghi_chu');
            $vanbang->trang_thai = $request->input('trang_thai');
            $vanbang->tin_hoc = $request->input('tin_hoc');
            $vanbang->quoc_phong = $request->input('quoc_phong');
            $vanbang->ngoai_ngu = $request->input('ngoai_ngu');
            $vanbang->ky_nang_nghe = $request->input('ky_nang_nghe');

            // if ($lophocphan->tonTaiMaLopHocPhan()) {
            //     continue;
            // }
            
            if ($vanbang->them())
            return ToolsModel::status('Th??m th??ng tin th??nh c??ng', 200);
        return ToolsModel::status('Th??m th??ng tin th???t b???i', 500);
    }
    public function postVanBang(Request $request)
    {

            $vanbang = new VanBangModel();
            $vanbang->id_van_bang = $request->input('id_van_bang');
            $vanbang->id_hoc_vien = $request->input('id_hoc_vien');
            $vanbang->ngay_cap = $request->input('ngay_cap');
            $vanbang->ghi_chu = $request->input('ghi_chu');
            $vanbang->trang_thai = $request->input('trang_thai');
            $vanbang->tin_hoc = $request->input('tin_hoc');
            $vanbang->quoc_phong = $request->input('quoc_phong');
            $vanbang->ngoai_ngu = $request->input('ngoai_ngu');
            $vanbang->ky_nang_nghe = $request->input('ky_nang_nghe');

            // if ($lophocphan->tonTaiMaLopHocPhan()) {
            //     continue;
            // }
            
            if($vanbang->sua())
            return ToolsModel::status('C???p nh???t th??ng tin th??nh c??ng', 200);
        return ToolsModel::status('C???p nh???t th??ng tin th???t b???i', 500);
    }
    public function deleteVanBang(Request $request){
        $vanbang = new VanBangModel();
        $vanbang->id_van_bang = $request->input('id_van_bang');
        if($vanbang->xoa())
            return ToolsModel::status('X??a th??ng tin th??nh c??ng', 200);
        return ToolsModel::status('X??a th??ng tin th???t b???i', 500);
    }
}
