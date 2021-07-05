*  NLP written by GAMS Convert at 10/06/06 11:47:22
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        201        1        0      200        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        403        1      402        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Positive Variables  x1,x2;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111,e112,e113,e114,e115,e116
          ,e117,e118,e119,e120,e121,e122,e123,e124,e125,e126,e127,e128,e129
          ,e130,e131,e132,e133,e134,e135,e136,e137,e138,e139,e140,e141,e142
          ,e143,e144,e145,e146,e147,e148,e149,e150,e151,e152,e153,e154,e155
          ,e156,e157,e158,e159,e160,e161,e162,e163,e164,e165,e166,e167,e168
          ,e169,e170,e171,e172,e173,e174,e175,e176,e177,e178,e179,e180,e181
          ,e182,e183,e184,e185,e186,e187,e188,e189,e190,e191,e192,e193,e194
          ,e195,e196,e197,e198,e199,e200,e201;


e1..  - 57.2957795130823*arctan((0.954929658551372 - x1)/(0.0461175971812904 + 
     x2)) =L= 30;

e2..  - 57.2957795130823*arctan((0.939275073984956 - x1)/(0.062646899132501 + 
     x2)) =L= 30;

e3..  - 57.2957795130823*arctan((0.924125476017457 - x1)/(0.0789074200042813 + 
     x2)) =L= 30;

e4..  - 57.2957795130823*arctan((0.909456817667973 - x1)/(0.0949077613507224 + 
     x2)) =L= 30;

e5..  - 57.2957795130823*arctan((0.895246554891911 - x1)/(0.110656118318861 + 
     x2)) =L= 30;

e6..  - 57.2957795130823*arctan((0.881473530970497 - x1)/(0.126160304854827 + 
     x2)) =L= 30;

e7..  - 57.2957795130823*arctan((0.868117871410338 - x1)/(0.141427776985615 + 
     x2)) =L= 30;

e8..  - 57.2957795130823*arctan((0.85516088825496 - x1)/(0.156465654350156 + x2
     )) =L= 30;

e9..  - 57.2957795130823*arctan((0.842584992839446 - x1)/(0.171280740135296 + 
     x2)) =L= 30;

e10..  - 57.2957795130823*arctan((0.830373616131628 - x1)/(0.185879539556449 + 
      x2)) =L= 30;

e11..  - 57.2957795130823*arctan((0.818511135901176 - x1)/(0.200268277008549 + 
      x2)) =L= 30;

e12..  - 57.2957795130823*arctan((0.806982810043413 - x1)/(0.214452912000505 + 
      x2)) =L= 30;

e13..  - 57.2957795130823*arctan((0.795774715459477 - x1)/(0.228439153975245 + 
      x2)) =L= 30;

e14..  - 57.2957795130823*arctan((0.784873691960032 - x1)/(0.242232476107581 + 
      x2)) =L= 30;

e15..  - 57.2957795130823*arctan((0.774267290717329 - x1)/(0.25583812816336 + 
      x2)) =L= 30;

e16..  - 57.2957795130823*arctan((0.763943726841098 - x1)/(0.2692611484955 + x2
      )) =L= 30;

e17..  - 57.2957795130823*arctan((0.753891835698452 - x1)/(0.282506375245521 + 
      x2)) =L= 30;

e18..  - 57.2957795130823*arctan((0.744101032637433 - x1)/(0.295578456812874 + 
      x2)) =L= 30;

e19..  - 57.2957795130823*arctan((0.734561275808748 - x1)/(0.308481861648782 + 
      x2)) =L= 30;

e20..  - 57.2957795130823*arctan((0.725263031811169 - x1)/(0.321220887426211 + 
      x2)) =L= 30;

e21..  - 57.2957795130823*arctan((0.716197243913529 - x1)/(0.333799669633071 + 
      x2)) =L= 30;

e22..  - 57.2957795130823*arctan((0.707355302630646 - x1)/(0.346222189631628 + 
      x2)) =L= 30;

e23..  - 57.2957795130823*arctan((0.698729018452223 - x1)/(0.358492282223443 + 
      x2)) =L= 30;

e24..  - 57.2957795130823*arctan((0.690310596543161 - x1)/(0.370613642755788 + 
      x2)) =L= 30;

e25..  - 57.2957795130823*arctan((0.68209261325098 - x1)/(0.382589833802503 + 
      x2)) =L= 30;

e26..  - 57.2957795130823*arctan((0.674067994271557 - x1)/(0.394424291449506 + 
      x2)) =L= 30;

e27..  - 57.2957795130823*arctan((0.666229994338167 - x1)/(0.406120331212697 + 
      x2)) =L= 30;

e28..  - 57.2957795130823*arctan((0.658572178311291 - x1)/(0.417681153613773 + 
      x2)) =L= 30;

e29..  - 57.2957795130823*arctan((0.651088403557754 - x1)/(0.429109849437396 + 
      x2)) =L= 30;

e30..  - 57.2957795130823*arctan((0.643772803517779 - x1)/(0.44040940469133 + 
      x2)) =L= 30;

e31..  - 57.2957795130823*arctan((0.636619772367581 - x1)/(0.451582705289455 + 
      x2)) =L= 30;

e32..  - 57.2957795130823*arctan((0.629623950693212 - x1)/(0.46263254147604 + 
      x2)) =L= 30;

e33..  - 57.2957795130823*arctan((0.622780212098721 - x1)/(0.47356161200823 + 
      x2)) =L= 30;

e34..  - 57.2957795130823*arctan((0.616083650678305 - x1)/(0.484372528112446 + 
      x2)) =L= 30;

e35..  - 57.2957795130823*arctan((0.60952956928811 - x1)/(0.495067817229193 + 
      x2)) =L= 30;

e36..  - 57.2957795130823*arctan((0.603113468558761 - x1)/(0.505649926559731 + 
      x2)) =L= 30;

e37..  - 57.2957795130823*arctan((0.596831036594608 - x1)/(0.516121226427026 + 
      x2)) =L= 30;

e38..  - 57.2957795130823*arctan((0.590678139310127 - x1)/(0.526484013462573 + 
      x2)) =L= 30;

e39..  - 57.2957795130823*arctan((0.584650811357983 - x1)/(0.536740513629761 + 
      x2)) =L= 30;

e40..  - 57.2957795130823*arctan((0.578745247606892 - x1)/(0.54689288509378 + 
      x2)) =L= 30;

e41..  - 57.2957795130823*arctan((0.572957795130823 - x1)/(0.556943220947281 + 
      x2)) =L= 30;

e42..  - 57.2957795130823*arctan((0.567284945674082 - x1)/(0.566893551800449 + 
      x2)) =L= 30;

e43..  - 57.2957795130823*arctan((0.561723328559631 - x1)/(0.576745848243461 + 
      x2)) =L= 30;

e44..  - 57.2957795130823*arctan((0.556269704010508 - x1)/(0.586502023188825 + 
      x2)) =L= 30;

e45..  - 57.2957795130823*arctan((0.550920956856561 - x1)/(0.596163934100562 + 
      x2)) =L= 30;

e46..  - 57.2957795130823*arctan((0.545674090600784 - x1)/(0.605733385116713 + 
      x2)) =L= 30;

e47..  - 57.2957795130823*arctan((0.540526221821531 - x1)/(0.615212129071257 + 
      x2)) =L= 30;

e48..  - 57.2957795130823*arctan((0.53547457488862 - x1)/(0.624601869421096 + 
      x2)) =L= 30;

e49..  - 57.2957795130823*arctan((0.530516476972984 - x1)/(0.633904262083409 + 
      x2)) =L= 30;

e50..  - 57.2957795130823*arctan((0.525649353331031 - x1)/(0.643120917188333 + 
      x2)) =L= 30;

e51..  - 57.2957795130823*arctan((0.520870722846203 - x1)/(0.652253400751606 + 
      x2)) =L= 30;

e52..  - 57.2957795130823*arctan((0.516178193811552 - x1)/(0.661303236271524 + 
      x2)) =L= 30;

e53..  - 57.2957795130823*arctan((0.511569459938235 - x1)/(0.670271906254284 + 
      x2)) =L= 30;

e54..  - 57.2957795130823*arctan((0.50704229657595 - x1)/(0.67916085367153 + x2
      )) =L= 30;

e55..  - 57.2957795130823*arctan((0.502594557132301 - x1)/(0.687971483353685 + 
      x2)) =L= 30;

e56..  - 57.2957795130823*arctan((0.498224169678977 - x1)/(0.69670516332244 + 
      x2)) =L= 30;

e57..  - 57.2957795130823*arctan((0.493929133733468 - x1)/(0.705363226065554 + 
      x2)) =L= 30;

e58..  - 57.2957795130823*arctan((0.489707517205832 - x1)/(0.713946969756946 + 
      x2)) =L= 30;

e59..  - 57.2957795130823*arctan((0.485557453500698 - x1)/(0.722457659424854 + 
      x2)) =L= 30;

e60..  - 57.2957795130823*arctan((0.481477138765398 - x1)/(0.730896528070719 + 
      x2)) =L= 30;

e61..  - 57.2957795130823*arctan((0.477464829275686 - x1)/(0.739264777741236 + 
      x2)) =L= 30;

e62..  - 57.2957795130823*arctan((0.473518838951094 - x1)/(0.747563580555931 + 
      x2)) =L= 30;

e63..  - 57.2957795130823*arctan((0.469637536992478 - x1)/(0.755794079692446 + 
      x2)) =L= 30;

e64..  - 57.2957795130823*arctan((0.465819345634816 - x1)/(0.763957390331607 + 
      x2)) =L= 30;

e65..  - 57.2957795130823*arctan((0.462062738008728 - x1)/(0.772054600564227 + 
      x2)) =L= 30;

e66..  - 57.2957795130823*arctan((0.458366236104659 - x1)/(0.780086772261491 + 
      x2)) =L= 30;

e67..  - 57.2957795130823*arctan((0.454728408833987 - x1)/(0.788054941910668 + 
      x2)) =L= 30;

e68..  - 57.2957795130823*arctan((0.451147870181751 - x1)/(0.795960121417781 + 
      x2)) =L= 30;

e69..  - 57.2957795130823*arctan((0.447623277445956 - x1)/(0.803803298878807 + 
      x2)) =L= 30;

e70..  - 57.2957795130823*arctan((0.444153329558778 - x1)/(0.811585439320862 + 
      x2)) =L= 30;

e71..  - 57.2957795130823*arctan((0.440736765485249 - x1)/(0.819307485414772 + 
      x2)) =L= 30;

e72..  - 57.2957795130823*arctan((0.437372362695285 - x1)/(0.826970358160341 + 
      x2)) =L= 30;

e73..  - 57.2957795130823*arctan((0.434058935705169 - x1)/(0.834574957545561 + 
      x2)) =L= 30;

e74..  - 57.2957795130823*arctan((0.43079533468483 - x1)/(0.842122163180943 + 
      x2)) =L= 30;

e75..  - 57.2957795130823*arctan((0.42758044412748 - x1)/(0.849612834910101 + 
      x2)) =L= 30;

e76..  - 57.2957795130823*arctan((0.424413181578388 - x1)/(0.857047813397619 + 
      x2)) =L= 30;

e77..  - 57.2957795130823*arctan((0.421292496419723 - x1)/(0.864427920695242 + 
      x2)) =L= 30;

e78..  - 57.2957795130823*arctan((0.41821736870863 - x1)/(0.871753960787315 + 
      x2)) =L= 30;

e79..  - 57.2957795130823*arctan((0.415186808065814 - x1)/(0.879026720116394 + 
      x2)) =L= 30;

e80..  - 57.2957795130823*arctan((0.412199852612103 - x1)/(0.886246968089881 + 
      x2)) =L= 30;

e81..  - 57.2957795130823*arctan((0.409255567950588 - x1)/(0.893415457568494 + 
      x2)) =L= 30;

e82..  - 57.2957795130823*arctan((0.406353046192073 - x1)/(0.900532925337358 + 
      x2)) =L= 30;

e83..  - 57.2957795130823*arctan((0.403491405021706 - x1)/(0.90760009256045 + 
      x2)) =L= 30;

e84..  - 57.2957795130823*arctan((0.400669786804771 - x1)/(0.914617665219097 + 
      x2)) =L= 30;

e85..  - 57.2957795130823*arctan((0.397887357729738 - x1)/(0.92158633453519 + 
      x2)) =L= 30;

e86..  - 57.2957795130823*arctan((0.395143306986775 - x1)/(0.928506777379764 + 
      x2)) =L= 30;

e87..  - 57.2957795130823*arctan((0.392436845980016 - x1)/(0.935379656667526 + 
      x2)) =L= 30;

e88..  - 57.2957795130823*arctan((0.389767207571989 - x1)/(0.942205621737926 + 
      x2)) =L= 30;

e89..  - 57.2957795130823*arctan((0.387133645358664 - x1)/(0.948985308723305 + 
      x2)) =L= 30;

e90..  - 57.2957795130823*arctan((0.384535432973707 - x1)/(0.955719340904649 + 
      x2)) =L= 30;

e91..  - 57.2957795130823*arctan((0.381971863420549 - x1)/(0.962408329055445 + 
      x2)) =L= 30;

e92..  - 57.2957795130823*arctan((0.379442248431009 - x1)/(0.969052871774114 + 
      x2)) =L= 30;

e93..  - 57.2957795130823*arctan((0.376945917849226 - x1)/(0.975653555805466 + 
      x2)) =L= 30;

e94..  - 57.2957795130823*arctan((0.374482219039754 - x1)/(0.982210956351625 + 
      x2)) =L= 30;

e95..  - 57.2957795130823*arctan((0.372050516318716 - x1)/(0.988725637372819 + 
      x2)) =L= 30;

e96..  - 57.2957795130823*arctan((0.369650190406983 - x1)/(0.995198151878436 + 
      x2)) =L= 30;

e97..  - 57.2957795130823*arctan((0.367280637904374 - x1)/(1.00162904220873 + 
      x2)) =L= 30;

e98..  - 57.2957795130823*arctan((0.364941270783964 - x1)/(1.0080188403075 + x2
      )) =L= 30;

e99..  - 57.2957795130823*arctan((0.362631515905584 - x1)/(1.01436806798616 + 
      x2)) =L= 30;

e100..  - 57.2957795130823*arctan((0.360350814547688 - x1)/(1.02067723717942 + 
       x2)) =L= 30;

e101.. 57.2957795130823*arctan((0.954929658551372 - x1)/(0.0461175971812904 + 
       x2)) =L= 30;

e102.. 57.2957795130823*arctan((0.939275073984956 - x1)/(0.062646899132501 + x2
       )) =L= 30;

e103.. 57.2957795130823*arctan((0.924125476017457 - x1)/(0.0789074200042813 + 
       x2)) =L= 30;

e104.. 57.2957795130823*arctan((0.909456817667973 - x1)/(0.0949077613507224 + 
       x2)) =L= 30;

e105.. 57.2957795130823*arctan((0.895246554891911 - x1)/(0.110656118318861 + x2
       )) =L= 30;

e106.. 57.2957795130823*arctan((0.881473530970497 - x1)/(0.126160304854827 + x2
       )) =L= 30;

e107.. 57.2957795130823*arctan((0.868117871410338 - x1)/(0.141427776985615 + x2
       )) =L= 30;

e108.. 57.2957795130823*arctan((0.85516088825496 - x1)/(0.156465654350156 + x2)
       ) =L= 30;

e109.. 57.2957795130823*arctan((0.842584992839446 - x1)/(0.171280740135296 + x2
       )) =L= 30;

e110.. 57.2957795130823*arctan((0.830373616131628 - x1)/(0.185879539556449 + x2
       )) =L= 30;

e111.. 57.2957795130823*arctan((0.818511135901176 - x1)/(0.200268277008549 + x2
       )) =L= 30;

e112.. 57.2957795130823*arctan((0.806982810043413 - x1)/(0.214452912000505 + x2
       )) =L= 30;

e113.. 57.2957795130823*arctan((0.795774715459477 - x1)/(0.228439153975245 + x2
       )) =L= 30;

e114.. 57.2957795130823*arctan((0.784873691960032 - x1)/(0.242232476107581 + x2
       )) =L= 30;

e115.. 57.2957795130823*arctan((0.774267290717329 - x1)/(0.25583812816336 + x2)
       ) =L= 30;

e116.. 57.2957795130823*arctan((0.763943726841098 - x1)/(0.2692611484955 + x2))
        =L= 30;

e117.. 57.2957795130823*arctan((0.753891835698452 - x1)/(0.282506375245521 + x2
       )) =L= 30;

e118.. 57.2957795130823*arctan((0.744101032637433 - x1)/(0.295578456812874 + x2
       )) =L= 30;

e119.. 57.2957795130823*arctan((0.734561275808748 - x1)/(0.308481861648782 + x2
       )) =L= 30;

e120.. 57.2957795130823*arctan((0.725263031811169 - x1)/(0.321220887426211 + x2
       )) =L= 30;

e121.. 57.2957795130823*arctan((0.716197243913529 - x1)/(0.333799669633071 + x2
       )) =L= 30;

e122.. 57.2957795130823*arctan((0.707355302630646 - x1)/(0.346222189631628 + x2
       )) =L= 30;

e123.. 57.2957795130823*arctan((0.698729018452223 - x1)/(0.358492282223443 + x2
       )) =L= 30;

e124.. 57.2957795130823*arctan((0.690310596543161 - x1)/(0.370613642755788 + x2
       )) =L= 30;

e125.. 57.2957795130823*arctan((0.68209261325098 - x1)/(0.382589833802503 + x2)
       ) =L= 30;

e126.. 57.2957795130823*arctan((0.674067994271557 - x1)/(0.394424291449506 + x2
       )) =L= 30;

e127.. 57.2957795130823*arctan((0.666229994338167 - x1)/(0.406120331212697 + x2
       )) =L= 30;

e128.. 57.2957795130823*arctan((0.658572178311291 - x1)/(0.417681153613773 + x2
       )) =L= 30;

e129.. 57.2957795130823*arctan((0.651088403557754 - x1)/(0.429109849437396 + x2
       )) =L= 30;

e130.. 57.2957795130823*arctan((0.643772803517779 - x1)/(0.44040940469133 + x2)
       ) =L= 30;

e131.. 57.2957795130823*arctan((0.636619772367581 - x1)/(0.451582705289455 + x2
       )) =L= 30;

e132.. 57.2957795130823*arctan((0.629623950693212 - x1)/(0.46263254147604 + x2)
       ) =L= 30;

e133.. 57.2957795130823*arctan((0.622780212098721 - x1)/(0.47356161200823 + x2)
       ) =L= 30;

e134.. 57.2957795130823*arctan((0.616083650678305 - x1)/(0.484372528112446 + x2
       )) =L= 30;

e135.. 57.2957795130823*arctan((0.60952956928811 - x1)/(0.495067817229193 + x2)
       ) =L= 30;

e136.. 57.2957795130823*arctan((0.603113468558761 - x1)/(0.505649926559731 + x2
       )) =L= 30;

e137.. 57.2957795130823*arctan((0.596831036594608 - x1)/(0.516121226427026 + x2
       )) =L= 30;

e138.. 57.2957795130823*arctan((0.590678139310127 - x1)/(0.526484013462573 + x2
       )) =L= 30;

e139.. 57.2957795130823*arctan((0.584650811357983 - x1)/(0.536740513629761 + x2
       )) =L= 30;

e140.. 57.2957795130823*arctan((0.578745247606892 - x1)/(0.54689288509378 + x2)
       ) =L= 30;

e141.. 57.2957795130823*arctan((0.572957795130823 - x1)/(0.556943220947281 + x2
       )) =L= 30;

e142.. 57.2957795130823*arctan((0.567284945674082 - x1)/(0.566893551800449 + x2
       )) =L= 30;

e143.. 57.2957795130823*arctan((0.561723328559631 - x1)/(0.576745848243461 + x2
       )) =L= 30;

e144.. 57.2957795130823*arctan((0.556269704010508 - x1)/(0.586502023188825 + x2
       )) =L= 30;

e145.. 57.2957795130823*arctan((0.550920956856561 - x1)/(0.596163934100562 + x2
       )) =L= 30;

e146.. 57.2957795130823*arctan((0.545674090600784 - x1)/(0.605733385116713 + x2
       )) =L= 30;

e147.. 57.2957795130823*arctan((0.540526221821531 - x1)/(0.615212129071257 + x2
       )) =L= 30;

e148.. 57.2957795130823*arctan((0.53547457488862 - x1)/(0.624601869421096 + x2)
       ) =L= 30;

e149.. 57.2957795130823*arctan((0.530516476972984 - x1)/(0.633904262083409 + x2
       )) =L= 30;

e150.. 57.2957795130823*arctan((0.525649353331031 - x1)/(0.643120917188333 + x2
       )) =L= 30;

e151.. 57.2957795130823*arctan((0.520870722846203 - x1)/(0.652253400751606 + x2
       )) =L= 30;

e152.. 57.2957795130823*arctan((0.516178193811552 - x1)/(0.661303236271524 + x2
       )) =L= 30;

e153.. 57.2957795130823*arctan((0.511569459938235 - x1)/(0.670271906254284 + x2
       )) =L= 30;

e154.. 57.2957795130823*arctan((0.50704229657595 - x1)/(0.67916085367153 + x2))
        =L= 30;

e155.. 57.2957795130823*arctan((0.502594557132301 - x1)/(0.687971483353685 + x2
       )) =L= 30;

e156.. 57.2957795130823*arctan((0.498224169678977 - x1)/(0.69670516332244 + x2)
       ) =L= 30;

e157.. 57.2957795130823*arctan((0.493929133733468 - x1)/(0.705363226065554 + x2
       )) =L= 30;

e158.. 57.2957795130823*arctan((0.489707517205832 - x1)/(0.713946969756946 + x2
       )) =L= 30;

e159.. 57.2957795130823*arctan((0.485557453500698 - x1)/(0.722457659424854 + x2
       )) =L= 30;

e160.. 57.2957795130823*arctan((0.481477138765398 - x1)/(0.730896528070719 + x2
       )) =L= 30;

e161.. 57.2957795130823*arctan((0.477464829275686 - x1)/(0.739264777741236 + x2
       )) =L= 30;

e162.. 57.2957795130823*arctan((0.473518838951094 - x1)/(0.747563580555931 + x2
       )) =L= 30;

e163.. 57.2957795130823*arctan((0.469637536992478 - x1)/(0.755794079692446 + x2
       )) =L= 30;

e164.. 57.2957795130823*arctan((0.465819345634816 - x1)/(0.763957390331607 + x2
       )) =L= 30;

e165.. 57.2957795130823*arctan((0.462062738008728 - x1)/(0.772054600564227 + x2
       )) =L= 30;

e166.. 57.2957795130823*arctan((0.458366236104659 - x1)/(0.780086772261491 + x2
       )) =L= 30;

e167.. 57.2957795130823*arctan((0.454728408833987 - x1)/(0.788054941910668 + x2
       )) =L= 30;

e168.. 57.2957795130823*arctan((0.451147870181751 - x1)/(0.795960121417781 + x2
       )) =L= 30;

e169.. 57.2957795130823*arctan((0.447623277445956 - x1)/(0.803803298878807 + x2
       )) =L= 30;

e170.. 57.2957795130823*arctan((0.444153329558778 - x1)/(0.811585439320862 + x2
       )) =L= 30;

e171.. 57.2957795130823*arctan((0.440736765485249 - x1)/(0.819307485414772 + x2
       )) =L= 30;

e172.. 57.2957795130823*arctan((0.437372362695285 - x1)/(0.826970358160341 + x2
       )) =L= 30;

e173.. 57.2957795130823*arctan((0.434058935705169 - x1)/(0.834574957545561 + x2
       )) =L= 30;

e174.. 57.2957795130823*arctan((0.43079533468483 - x1)/(0.842122163180943 + x2)
       ) =L= 30;

e175.. 57.2957795130823*arctan((0.42758044412748 - x1)/(0.849612834910101 + x2)
       ) =L= 30;

e176.. 57.2957795130823*arctan((0.424413181578388 - x1)/(0.857047813397619 + x2
       )) =L= 30;

e177.. 57.2957795130823*arctan((0.421292496419723 - x1)/(0.864427920695242 + x2
       )) =L= 30;

e178.. 57.2957795130823*arctan((0.41821736870863 - x1)/(0.871753960787315 + x2)
       ) =L= 30;

e179.. 57.2957795130823*arctan((0.415186808065814 - x1)/(0.879026720116394 + x2
       )) =L= 30;

e180.. 57.2957795130823*arctan((0.412199852612103 - x1)/(0.886246968089881 + x2
       )) =L= 30;

e181.. 57.2957795130823*arctan((0.409255567950588 - x1)/(0.893415457568494 + x2
       )) =L= 30;

e182.. 57.2957795130823*arctan((0.406353046192073 - x1)/(0.900532925337358 + x2
       )) =L= 30;

e183.. 57.2957795130823*arctan((0.403491405021706 - x1)/(0.90760009256045 + x2)
       ) =L= 30;

e184.. 57.2957795130823*arctan((0.400669786804771 - x1)/(0.914617665219097 + x2
       )) =L= 30;

e185.. 57.2957795130823*arctan((0.397887357729738 - x1)/(0.92158633453519 + x2)
       ) =L= 30;

e186.. 57.2957795130823*arctan((0.395143306986775 - x1)/(0.928506777379764 + x2
       )) =L= 30;

e187.. 57.2957795130823*arctan((0.392436845980016 - x1)/(0.935379656667526 + x2
       )) =L= 30;

e188.. 57.2957795130823*arctan((0.389767207571989 - x1)/(0.942205621737926 + x2
       )) =L= 30;

e189.. 57.2957795130823*arctan((0.387133645358664 - x1)/(0.948985308723305 + x2
       )) =L= 30;

e190.. 57.2957795130823*arctan((0.384535432973707 - x1)/(0.955719340904649 + x2
       )) =L= 30;

e191.. 57.2957795130823*arctan((0.381971863420549 - x1)/(0.962408329055445 + x2
       )) =L= 30;

e192.. 57.2957795130823*arctan((0.379442248431009 - x1)/(0.969052871774114 + x2
       )) =L= 30;

e193.. 57.2957795130823*arctan((0.376945917849226 - x1)/(0.975653555805466 + x2
       )) =L= 30;

e194.. 57.2957795130823*arctan((0.374482219039754 - x1)/(0.982210956351625 + x2
       )) =L= 30;

e195.. 57.2957795130823*arctan((0.372050516318716 - x1)/(0.988725637372819 + x2
       )) =L= 30;

e196.. 57.2957795130823*arctan((0.369650190406983 - x1)/(0.995198151878436 + x2
       )) =L= 30;

e197.. 57.2957795130823*arctan((0.367280637904374 - x1)/(1.00162904220873 + x2)
       ) =L= 30;

e198.. 57.2957795130823*arctan((0.364941270783964 - x1)/(1.0080188403075 + x2))
        =L= 30;

e199.. 57.2957795130823*arctan((0.362631515905584 - x1)/(1.01436806798616 + x2)
       ) =L= 30;

e200.. 57.2957795130823*arctan((0.360350814547688 - x1)/(1.02067723717942 + x2)
       ) =L= 30;

e201..  - 0.872664625997165*(sqr(0.0461175971812904 + 0.5*x1 + 
       0.866025403784439*x2) + sqr(0.0461175971812904 - 0.866025403784439*x1 + 
       0.5*x2) + sqr(0.062646899132501 + 0.484809620246337*x1 + 
       0.874619707139396*x2) + sqr(0.062646899132501 - 0.874619707139396*x1 + 
       0.484809620246337*x2) + sqr(0.0789074200042813 + 0.469471562785891*x1 + 
       0.882947592858927*x2) + sqr(0.0789074200042813 - 0.882947592858927*x1 + 
       0.469471562785891*x2) + sqr(0.0949077613507224 + 0.453990499739547*x1 + 
       0.891006524188368*x2) + sqr(0.0949077613507224 - 0.891006524188368*x1 + 
       0.453990499739547*x2) + sqr(0.110656118318861 + 0.438371146789078*x1 + 
       0.898794046299167*x2) + sqr(0.110656118318861 - 0.898794046299167*x1 + 
       0.438371146789078*x2) + sqr(0.126160304854827 + 0.422618261740699*x1 + 
       0.90630778703665*x2) + sqr(0.126160304854827 - 0.90630778703665*x1 + 
       0.422618261740699*x2) + sqr(0.141427776985615 + 0.4067366430758*x1 + 
       0.913545457642601*x2) + sqr(0.141427776985615 - 0.913545457642601*x1 + 
       0.4067366430758*x2) + sqr(0.156465654350156 + 0.390731128489274*x1 + 
       0.92050485345244*x2) + sqr(0.156465654350156 - 0.92050485345244*x1 + 
       0.390731128489274*x2) + sqr(0.171280740135296 + 0.374606593415912*x1 + 
       0.927183854566787*x2) + sqr(0.171280740135296 - 0.927183854566787*x1 + 
       0.374606593415912*x2) + sqr(0.185879539556449 + 0.3583679495453*x1 + 
       0.933580426497202*x2) + sqr(0.185879539556449 - 0.933580426497202*x1 + 
       0.3583679495453*x2) + sqr(0.200268277008549 + 0.342020143325669*x1 + 
       0.939692620785908*x2) + sqr(0.200268277008549 - 0.939692620785908*x1 + 
       0.342020143325669*x2) + sqr(0.214452912000505 + 0.325568154457157*x1 + 
       0.945518575599317*x2) + sqr(0.214452912000505 - 0.945518575599317*x1 + 
       0.325568154457157*x2) + sqr(0.228439153975245 + 0.309016994374947*x1 + 
       0.951056516295154*x2) + sqr(0.228439153975245 - 0.951056516295154*x1 + 
       0.309016994374947*x2) + sqr(0.242232476107581 + 0.292371704722737*x1 + 
       0.956304755963035*x2) + sqr(0.242232476107581 - 0.956304755963035*x1 + 
       0.292371704722737*x2) + sqr(0.25583812816336 + 0.275637355816999*x1 + 
       0.961261695938319*x2) + sqr(0.25583812816336 - 0.961261695938319*x1 + 
       0.275637355816999*x2) + sqr(0.2692611484955 + 0.258819045102521*x1 + 
       0.965925826289068*x2) + sqr(0.2692611484955 - 0.965925826289068*x1 + 
       0.258819045102521*x2) + sqr(0.282506375245521 + 0.241921895599668*x1 + 
       0.970295726275996*x2) + sqr(0.282506375245521 - 0.970295726275996*x1 + 
       0.241921895599668*x2) + sqr(0.295578456812874 + 0.224951054343865*x1 + 
       0.974370064785235*x2) + sqr(0.295578456812874 - 0.974370064785235*x1 + 
       0.224951054343865*x2) + sqr(0.308481861648782 + 0.207911690817759*x1 + 
       0.978147600733806*x2) + sqr(0.308481861648782 - 0.978147600733806*x1 + 
       0.207911690817759*x2) + sqr(0.321220887426211 + 0.190808995376545*x1 + 
       0.981627183447664*x2) + sqr(0.321220887426211 - 0.981627183447664*x1 + 
       0.190808995376545*x2) + sqr(0.333799669633071 + 0.17364817766693*x1 + 
       0.984807753012208*x2) + sqr(0.333799669633071 - 0.984807753012208*x1 + 
       0.17364817766693*x2) + sqr(0.346222189631628 + 0.156434465040231*x1 + 
       0.987688340595138*x2) + sqr(0.346222189631628 - 0.987688340595138*x1 + 
       0.156434465040231*x2) + sqr(0.358492282223443 + 0.139173100960065*x1 + 
       0.99026806874157*x2) + sqr(0.358492282223443 - 0.99026806874157*x1 + 
       0.139173100960065*x2) + sqr(0.370613642755788 + 0.121869343405148*x1 + 
       0.992546151641322*x2) + sqr(0.370613642755788 - 0.992546151641322*x1 + 
       0.121869343405148*x2) + sqr(0.382589833802503 + 0.104528463267653*x1 + 
       0.994521895368273*x2) + sqr(0.382589833802503 - 0.994521895368273*x1 + 
       0.104528463267653*x2) + sqr(0.394424291449506 + 0.0871557427476584*x1 + 
       0.996194698091746*x2) + sqr(0.394424291449506 - 0.996194698091746*x1 + 
       0.0871557427476584*x2) + sqr(0.406120331212697 + 0.0697564737441255*x1
        + 0.997564050259824*x2) + sqr(0.406120331212697 - 0.997564050259824*x1
        + 0.0697564737441255*x2) + sqr(0.417681153613773 + 0.052335956242944*x1
        + 0.998629534754574*x2) + sqr(0.417681153613773 - 0.998629534754574*x1
        + 0.052335956242944*x2) + sqr(0.429109849437396 + 0.0348994967025011*x1
        + 0.999390827019096*x2) + sqr(0.429109849437396 - 0.999390827019096*x1
        + 0.0348994967025011*x2) + sqr(0.44040940469133 + 0.0174524064372836*x1
        + 0.999847695156391*x2) + sqr(0.44040940469133 - 0.999847695156391*x1
        + 0.0174524064372836*x2) + sqr(0.451582705289455 + 6.12303176911189e-17
       *x1 + x2) + sqr(0.451582705289455 - x1 + 6.12303176911189e-17*x2) + sqr(
       0.46263254147604 - 0.0174524064372835*x1 + 0.999847695156391*x2) + sqr(
       0.46263254147604 - 0.999847695156391*x1 - 0.0174524064372835*x2) + sqr(
       0.47356161200823 - 0.0348994967025007*x1 + 0.999390827019096*x2) + sqr(
       0.47356161200823 - 0.999390827019096*x1 - 0.0348994967025007*x2) + sqr(
       0.484372528112446 - 0.0523359562429436*x1 + 0.998629534754574*x2) + sqr(
       0.484372528112446 - 0.998629534754574*x1 - 0.0523359562429436*x2) + sqr(
       0.495067817229193 - 0.0697564737441249*x1 + 0.997564050259824*x2) + sqr(
       0.495067817229193 - 0.997564050259824*x1 - 0.0697564737441249*x2) + sqr(
       0.505649926559731 - 0.0871557427476582*x1 + 0.996194698091746*x2) + sqr(
       0.505649926559731 - 0.996194698091746*x1 - 0.0871557427476582*x2) + sqr(
       0.516121226427026 - 0.104528463267653*x1 + 0.994521895368273*x2) + sqr(
       0.516121226427026 - 0.994521895368273*x1 - 0.104528463267653*x2) + sqr(
       0.526484013462573 - 0.121869343405147*x1 + 0.992546151641322*x2) + sqr(
       0.526484013462573 - 0.992546151641322*x1 - 0.121869343405147*x2) + sqr(
       0.536740513629761 - 0.139173100960065*x1 + 0.99026806874157*x2) + sqr(
       0.536740513629761 - 0.99026806874157*x1 - 0.139173100960065*x2) + sqr(
       0.54689288509378 - 0.156434465040231*x1 + 0.987688340595138*x2) + sqr(
       0.54689288509378 - 0.987688340595138*x1 - 0.156434465040231*x2) + sqr(
       0.556943220947281 - 0.17364817766693*x1 + 0.984807753012208*x2) + sqr(
       0.556943220947281 - 0.984807753012208*x1 - 0.17364817766693*x2) + sqr(
       0.566893551800449 - 0.190808995376545*x1 + 0.981627183447664*x2) + sqr(
       0.566893551800449 - 0.981627183447664*x1 - 0.190808995376545*x2) + sqr(
       0.576745848243461 - 0.207911690817759*x1 + 0.978147600733806*x2) + sqr(
       0.576745848243461 - 0.978147600733806*x1 - 0.207911690817759*x2) + sqr(
       0.586502023188825 - 0.224951054343865*x1 + 0.974370064785235*x2) + sqr(
       0.586502023188825 - 0.974370064785235*x1 - 0.224951054343865*x2) + sqr(
       0.596163934100562 - 0.241921895599668*x1 + 0.970295726275996*x2) + sqr(
       0.596163934100562 - 0.970295726275996*x1 - 0.241921895599668*x2) + sqr(
       0.605733385116713 - 0.25881904510252*x1 + 0.965925826289068*x2) + sqr(
       0.605733385116713 - 0.965925826289068*x1 - 0.25881904510252*x2) + sqr(
       0.615212129071257 - 0.275637355816999*x1 + 0.961261695938319*x2) + sqr(
       0.615212129071257 - 0.961261695938319*x1 - 0.275637355816999*x2) + sqr(
       0.624601869421096 - 0.292371704722737*x1 + 0.956304755963036*x2) + sqr(
       0.624601869421096 - 0.956304755963036*x1 - 0.292371704722737*x2) + sqr(
       0.633904262083409 - 0.309016994374947*x1 + 0.951056516295154*x2) + sqr(
       0.633904262083409 - 0.951056516295154*x1 - 0.309016994374947*x2) + sqr(
       0.643120917188333 - 0.325568154457156*x1 + 0.945518575599317*x2) + sqr(
       0.643120917188333 - 0.945518575599317*x1 - 0.325568154457156*x2) + sqr(
       0.652253400751606 - 0.342020143325669*x1 + 0.939692620785908*x2) + sqr(
       0.652253400751606 - 0.939692620785908*x1 - 0.342020143325669*x2) + sqr(
       0.661303236271524 - 0.3583679495453*x1 + 0.933580426497202*x2) + sqr(
       0.661303236271524 - 0.933580426497202*x1 - 0.3583679495453*x2) + sqr(
       0.670271906254284 - 0.374606593415912*x1 + 0.927183854566787*x2) + sqr(
       0.670271906254284 - 0.927183854566787*x1 - 0.374606593415912*x2) + sqr(
       0.67916085367153 - 0.390731128489274*x1 + 0.92050485345244*x2) + sqr(
       0.67916085367153 - 0.92050485345244*x1 - 0.390731128489274*x2) + sqr(
       0.687971483353685 - 0.4067366430758*x1 + 0.913545457642601*x2) + sqr(
       0.687971483353685 - 0.913545457642601*x1 - 0.4067366430758*x2) + sqr(
       0.69670516332244 - 0.422618261740699*x1 + 0.90630778703665*x2) + sqr(
       0.69670516332244 - 0.90630778703665*x1 - 0.422618261740699*x2) + sqr(
       0.705363226065554 - 0.438371146789077*x1 + 0.898794046299167*x2) + sqr(
       0.705363226065554 - 0.898794046299167*x1 - 0.438371146789077*x2) + sqr(
       0.713946969756946 - 0.453990499739546*x1 + 0.891006524188368*x2) + sqr(
       0.713946969756946 - 0.891006524188368*x1 - 0.453990499739546*x2) + sqr(
       0.722457659424854 - 0.469471562785891*x1 + 0.882947592858927*x2) + sqr(
       0.722457659424854 - 0.882947592858927*x1 - 0.469471562785891*x2) + sqr(
       0.730896528070719 - 0.484809620246337*x1 + 0.874619707139396*x2) + sqr(
       0.730896528070719 - 0.874619707139396*x1 - 0.484809620246337*x2) + sqr(
       0.739264777741236 - 0.5*x1 + 0.866025403784439*x2) + sqr(
       0.739264777741236 - 0.866025403784439*x1 - 0.5*x2) + sqr(
       0.747563580555931 - 0.515038074910054*x1 + 0.857167300702112*x2) + sqr(
       0.747563580555931 - 0.857167300702112*x1 - 0.515038074910054*x2) + sqr(
       0.755794079692446 - 0.529919264233205*x1 + 0.848048096156426*x2) + sqr(
       0.755794079692446 - 0.848048096156426*x1 - 0.529919264233205*x2) + sqr(
       0.763957390331607 - 0.544639035015027*x1 + 0.838670567945424*x2) + sqr(
       0.763957390331607 - 0.838670567945424*x1 - 0.544639035015027*x2) + sqr(
       0.772054600564227 - 0.559192903470747*x1 + 0.829037572555042*x2) + sqr(
       0.772054600564227 - 0.829037572555042*x1 - 0.559192903470747*x2) + sqr(
       0.780086772261491 - 0.573576436351046*x1 + 0.819152044288992*x2) + sqr(
       0.780086772261491 - 0.819152044288992*x1 - 0.573576436351046*x2) + sqr(
       0.788054941910668 - 0.587785252292473*x1 + 0.809016994374947*x2) + sqr(
       0.788054941910668 - 0.809016994374947*x1 - 0.587785252292473*x2) + sqr(
       0.795960121417781 - 0.601815023152048*x1 + 0.798635510047293*x2) + sqr(
       0.795960121417781 - 0.798635510047293*x1 - 0.601815023152048*x2) + sqr(
       0.803803298878807 - 0.615661475325658*x1 + 0.788010753606722*x2) + sqr(
       0.803803298878807 - 0.788010753606722*x1 - 0.615661475325658*x2) + sqr(
       0.811585439320862 - 0.629320391049837*x1 + 0.777145961456971*x2) + sqr(
       0.811585439320862 - 0.777145961456971*x1 - 0.629320391049837*x2) + sqr(
       0.819307485414772 - 0.642787609686539*x1 + 0.766044443118978*x2) + sqr(
       0.819307485414772 - 0.766044443118978*x1 - 0.642787609686539*x2) + sqr(
       0.826970358160341 - 0.656059028990507*x1 + 0.754709580222772*x2) + sqr(
       0.826970358160341 - 0.754709580222772*x1 - 0.656059028990507*x2) + sqr(
       0.834574957545561 - 0.669130606358858*x1 + 0.743144825477394*x2) + sqr(
       0.834574957545561 - 0.743144825477394*x1 - 0.669130606358858*x2) + sqr(
       0.842122163180943 - 0.681998360062498*x1 + 0.731353701619171*x2) + sqr(
       0.842122163180943 - 0.731353701619171*x1 - 0.681998360062498*x2) + sqr(
       0.849612834910101 - 0.694658370458997*x1 + 0.719339800338651*x2) + sqr(
       0.849612834910101 - 0.719339800338651*x1 - 0.694658370458997*x2) + sqr(
       0.857047813397619 - 0.707106781186547*x1 + 0.707106781186548*x2) + sqr(
       0.857047813397619 - 0.707106781186548*x1 - 0.707106781186547*x2) + sqr(
       0.864427920695242 - 0.719339800338651*x1 + 0.694658370458997*x2) + sqr(
       0.864427920695242 - 0.694658370458997*x1 - 0.719339800338651*x2) + sqr(
       0.871753960787315 - 0.73135370161917*x1 + 0.681998360062499*x2) + sqr(
       0.871753960787315 - 0.681998360062499*x1 - 0.73135370161917*x2) + sqr(
       0.879026720116394 - 0.743144825477394*x1 + 0.669130606358858*x2) + sqr(
       0.879026720116394 - 0.669130606358858*x1 - 0.743144825477394*x2) + sqr(
       0.886246968089881 - 0.754709580222772*x1 + 0.656059028990508*x2) + sqr(
       0.886246968089881 - 0.656059028990508*x1 - 0.754709580222772*x2) + sqr(
       0.893415457568494 - 0.766044443118978*x1 + 0.642787609686539*x2) + sqr(
       0.893415457568494 - 0.642787609686539*x1 - 0.766044443118978*x2) + sqr(
       0.900532925337358 - 0.777145961456971*x1 + 0.629320391049837*x2) + sqr(
       0.900532925337358 - 0.629320391049837*x1 - 0.777145961456971*x2) + sqr(
       0.90760009256045 - 0.788010753606722*x1 + 0.615661475325658*x2) + sqr(
       0.90760009256045 - 0.615661475325658*x1 - 0.788010753606722*x2) + sqr(
       0.914617665219097 - 0.798635510047293*x1 + 0.601815023152048*x2) + sqr(
       0.914617665219097 - 0.601815023152048*x1 - 0.798635510047293*x2) + sqr(
       0.92158633453519 - 0.809016994374947*x1 + 0.587785252292473*x2) + sqr(
       0.92158633453519 - 0.587785252292473*x1 - 0.809016994374947*x2) + sqr(
       0.928506777379764 - 0.819152044288992*x1 + 0.573576436351046*x2) + sqr(
       0.928506777379764 - 0.573576436351046*x1 - 0.819152044288992*x2) + sqr(
       0.935379656667526 - 0.829037572555042*x1 + 0.559192903470747*x2) + sqr(
       0.935379656667526 - 0.559192903470747*x1 - 0.829037572555042*x2) + sqr(
       0.942205621737926 - 0.838670567945424*x1 + 0.544639035015027*x2) + sqr(
       0.942205621737926 - 0.544639035015027*x1 - 0.838670567945424*x2) + sqr(
       0.948985308723305 - 0.848048096156426*x1 + 0.529919264233205*x2) + sqr(
       0.948985308723305 - 0.529919264233205*x1 - 0.848048096156426*x2) + sqr(
       0.955719340904649 - 0.857167300702112*x1 + 0.515038074910054*x2) + sqr(
       0.955719340904649 - 0.515038074910054*x1 - 0.857167300702112*x2) + sqr(
       0.962408329055445 - 0.866025403784438*x1 + 0.5*x2) + sqr(
       0.962408329055445 - 0.5*x1 - 0.866025403784438*x2) + sqr(
       0.969052871774114 - 0.874619707139396*x1 + 0.484809620246338*x2) + sqr(
       0.969052871774114 - 0.484809620246338*x1 - 0.874619707139396*x2) + sqr(
       0.975653555805466 - 0.882947592858927*x1 + 0.469471562785891*x2) + sqr(
       0.975653555805466 - 0.469471562785891*x1 - 0.882947592858927*x2) + sqr(
       0.982210956351625 - 0.891006524188368*x1 + 0.453990499739546*x2) + sqr(
       0.982210956351625 - 0.453990499739546*x1 - 0.891006524188368*x2) + sqr(
       0.988725637372819 - 0.898794046299167*x1 + 0.438371146789077*x2) + sqr(
       0.988725637372819 - 0.438371146789077*x1 - 0.898794046299167*x2) + sqr(
       0.995198151878436 - 0.90630778703665*x1 + 0.422618261740699*x2) + sqr(
       0.995198151878436 - 0.422618261740699*x1 - 0.90630778703665*x2) + sqr(
       1.00162904220873 - 0.913545457642601*x1 + 0.4067366430758*x2) + sqr(
       1.00162904220873 - 0.4067366430758*x1 - 0.913545457642601*x2) + sqr(
       1.0080188403075 - 0.92050485345244*x1 + 0.390731128489274*x2) + sqr(
       1.0080188403075 - 0.390731128489274*x1 - 0.92050485345244*x2) + sqr(
       1.01436806798616 - 0.927183854566787*x1 + 0.374606593415912*x2) + sqr(
       1.01436806798616 - 0.374606593415912*x1 - 0.927183854566787*x2) + sqr(
       1.02067723717942 - 0.933580426497202*x1 + 0.358367949545301*x2) + sqr(
       1.02067723717942 - 0.358367949545301*x1 - 0.933580426497202*x2))
        + objvar =E= 0;

* set non default bounds

x1.up = 1.5; 
x2.up = 1.5; 

* set non default levels

x1.l = 0.75; 
x2.l = 0.75; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;