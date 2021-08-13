package com.example.nmsm.dyn.service;

import com.example.nmsm.dyn.dao.HotelDAO;

import com.example.nmsm.dyn.dao.UserDAO;
import com.example.nmsm.sta.config.auth.PrincipalDetails;
import com.example.nmsm.sta.model.BookInfoEntity;
import com.example.nmsm.sta.model.dto.BookInfoDTO;
import com.example.nmsm.sta.model.dto.HotelInfoDTO;
import com.example.nmsm.sta.model.dto.HotelReviewDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.nmsm.sta.config.auth.PrincipalDetails;
import com.example.nmsm.sta.model.BookInfoEntity;
import com.example.nmsm.sta.model.HotelInfoEntity;
import com.example.nmsm.sta.model.ServiceEntity;
import com.example.nmsm.sta.model.dto.BookInfoDTO;
import com.example.nmsm.sta.model.dto.HotelInfoDTO;
import com.example.nmsm.sta.model.dto.HotelReviewDTO;
import com.example.nmsm.sta.model.dto.HotelServiceDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class HotelService extends CommonService{

    @Autowired
    private HotelDAO hotelDAO;

    @Autowired
    private UserDAO userDAO;


    public List<HotelInfoDTO> getLikeHotel(PrincipalDetails principalDetails){
        List<HotelInfoDTO> list = hotelDAO.selectLikeHotelInfoByIuser(getIuser(principalDetails));
        System.out.println("all: "+list.get(0).toString());
        for(HotelServiceDTO a:list.get(0).getServiceList()){
            System.out.println("service : "+a.getS_nm());
        }
        return list;
    }
      
    public void registHotel(HotelInfoEntity hotelInfoEntity, PrincipalDetails principalDetails){
        // TODO : 호텔이 있냐 없냐에 따라 insert or update
        hotelInfoEntity.setIuser(getIuser(principalDetails));
        hotelDAO.insertHotel(hotelInfoEntity);

    }
    public HotelInfoDTO getMyHotel(PrincipalDetails principalDetails){
        return hotelDAO.selectMyHotelInfoByIuser(getIuser(principalDetails));
    }

    public List<HotelInfoDTO> selHotelList(BookInfoDTO bookInfoDTO, PrincipalDetails principalDetails) {
        bookInfoDTO.setIuser(getIuser(principalDetails));

        int startIdx = (bookInfoDTO.getPage() - 1) * bookInfoDTO.getRecordCnt();
        bookInfoDTO.setStartIdx(startIdx);
        List<HotelInfoDTO> result = hotelDAO.selHotelList(bookInfoDTO);

        return result;
    }

    public HotelInfoDTO selHotelInfo(BookInfoEntity bookInfoEntity){

        return hotelDAO.selHotelInfo(bookInfoEntity);
    }

    public List<HotelReviewDTO> selHotelReview(BookInfoEntity bookInfoEntity){
        List<HotelReviewDTO> data = hotelDAO.selHotelReview(bookInfoEntity);
        return data;
    }


    public int chkHotelUse(BookInfoEntity bookInfoEntity) {
        return userDAO.chkHotelUse(bookInfoEntity);
    }

    public int insHotelReview(HotelReviewDTO hotelReviewDTO) {
        int hr = hotelDAO.insHotelReview(hotelReviewDTO);
        int hi = hotelDAO.insHotelReviewImg(hotelReviewDTO);
        int hs = hotelDAO.insAvgStar(hotelReviewDTO.getIhotel());
        int result = hr + hi + hs;
        return result; //result 값이 1보다 크면 insert 성공

    }


    public int selMaxPageVal(String hLocation) {
        return hotelDAO.selMaxPageVal(hLocation);
    }

    public int selReviewNum(int ihotel) {
        return hotelDAO.selReviewNum(ihotel);
    }

    public int updHotelReview(HotelReviewDTO hotelReviewDTO) {
        int img = hotelDAO.updHotelReviewImg(hotelReviewDTO);
        int cnt = hotelDAO.updHotelReview(hotelReviewDTO);

        return cnt;
    }

    public int delHotelReview(HotelReviewDTO hotelReviewDTO){
        //TODO: 등록된 review에 사진이 있으면 사진 먼저 삭제
        hotelDAO.delHotelReviewImg(hotelReviewDTO);
        return hotelDAO.delHotelReview(hotelReviewDTO);
    }


    public List<ServiceEntity> getAllService(){
        return serviceDAO.selectAllInfo();
    }

    public void regisHotelImg(PrincipalDetails principalDetails,
                              MultipartFile[] files){
        if(files == null)return;
        // 또는 iuser로 하여금 호텔 pk를 받아와서 처리하도록?
        int iuser = getIuser(principalDetails);
        String baseDir = makeDir("/hotel/"+iuser);
        for(int i=0; i<files.length; i++){
            String fileName = iuser+"-"+(i+1)+".jpg";
            saveFile(baseDir,fileName,files[i]);
        }
    }

}