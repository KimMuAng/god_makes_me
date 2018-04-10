class HomeController < ApplicationController
    def index
        element = [
            "애교", "분노", "성욕", "시크함", "수줍음", "간지", "똘끼", "노잼", "센스", "외모", "냄새", "뭔지 모르는 것"]
        
        @pick1 = element[rand(element.length)]
        @pick2 = element[rand(element.length)]
        @pick3 = element[rand(element.length)]
        
        img = ["1.PNG", "2.PNG", "3.PNG", "4.PNG"]
        @random_img1 = img[rand(4)]
        @random_img2 = img[rand(4)]
        @random_img3 = img[rand(4)]
        
        @random_img = [@random_img1, @random_img2, @random_img3]
        @sentence = []
        
        for i in [0, 1, 2]
            if @random_img[i] == "1.PNG"
                @sentence[i] = " 한 스푼"
            elsif @random_img[i] == "2.PNG"
                @sentence[i] = "을(를) 잘못 넣었넹;;;;"
            elsif @random_img[i] == "3.PNG"
                @sentence[i] = " 한컵.. 어어!"
            else
                @sentence[i] = " 우와아아ㅏ아아ㅏ앙"
            end
        end    
    end
end