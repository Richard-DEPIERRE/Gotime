# Generated from lib/makeup/lexers/elixir_lexer/variables.ex.exs, do not edit.
# Generated at 2020-10-02 20:53:40Z.

defmodule Makeup.Lexers.ElixirLexer.Variables do
  @moduledoc false

  def variable_continue_chars__0(
        <<x0::utf8, rest::binary>>,
        acc,
        stack,
        context,
        comb__line,
        comb__offset
      )
      when (x0 >= 48 and x0 <= 57) or (x0 >= 65 and x0 <= 90) or x0 === 95 or
             (x0 >= 97 and x0 <= 122) or x0 === 170 or x0 === 181 or x0 === 183 or x0 === 186 or
             (x0 >= 192 and x0 <= 214) or (x0 >= 216 and x0 <= 246) or (x0 >= 248 and x0 <= 705) or
             (x0 >= 710 and x0 <= 721) or (x0 >= 736 and x0 <= 740) or x0 === 748 or x0 === 750 or
             (x0 >= 768 and x0 <= 884) or (x0 >= 886 and x0 <= 887) or (x0 >= 890 and x0 <= 893) or
             x0 === 895 or (x0 >= 902 and x0 <= 906) or x0 === 908 or (x0 >= 910 and x0 <= 929) or
             (x0 >= 931 and x0 <= 1013) or (x0 >= 1015 and x0 <= 1153) or
             (x0 >= 1155 and x0 <= 1159) or (x0 >= 1162 and x0 <= 1327) or
             (x0 >= 1329 and x0 <= 1366) or x0 === 1369 or (x0 >= 1376 and x0 <= 1416) or
             (x0 >= 1425 and x0 <= 1469) or x0 === 1471 or (x0 >= 1473 and x0 <= 1474) or
             (x0 >= 1476 and x0 <= 1477) or x0 === 1479 or (x0 >= 1488 and x0 <= 1514) or
             (x0 >= 1519 and x0 <= 1522) or (x0 >= 1552 and x0 <= 1562) or
             (x0 >= 1568 and x0 <= 1641) or (x0 >= 1646 and x0 <= 1747) or
             (x0 >= 1749 and x0 <= 1756) or (x0 >= 1759 and x0 <= 1768) or
             (x0 >= 1770 and x0 <= 1788) or x0 === 1791 or (x0 >= 1808 and x0 <= 1866) or
             (x0 >= 1869 and x0 <= 1969) or (x0 >= 1984 and x0 <= 2037) or x0 === 2042 or
             x0 === 2045 or (x0 >= 2048 and x0 <= 2093) or (x0 >= 2112 and x0 <= 2139) or
             (x0 >= 2144 and x0 <= 2154) or (x0 >= 2208 and x0 <= 2228) or
             (x0 >= 2230 and x0 <= 2247) or (x0 >= 2259 and x0 <= 2273) or
             (x0 >= 2275 and x0 <= 2403) or (x0 >= 2406 and x0 <= 2415) or
             (x0 >= 2417 and x0 <= 2435) or (x0 >= 2437 and x0 <= 2444) or
             (x0 >= 2447 and x0 <= 2448) or (x0 >= 2451 and x0 <= 2472) or
             (x0 >= 2474 and x0 <= 2480) or x0 === 2482 or (x0 >= 2486 and x0 <= 2489) or
             (x0 >= 2492 and x0 <= 2500) or (x0 >= 2503 and x0 <= 2504) or
             (x0 >= 2507 and x0 <= 2510) or x0 === 2519 or (x0 >= 2524 and x0 <= 2525) or
             (x0 >= 2527 and x0 <= 2531) or (x0 >= 2534 and x0 <= 2545) or x0 === 2556 or
             x0 === 2558 or (x0 >= 2561 and x0 <= 2563) or (x0 >= 2565 and x0 <= 2570) or
             (x0 >= 2575 and x0 <= 2576) or (x0 >= 2579 and x0 <= 2600) or
             (x0 >= 2602 and x0 <= 2608) or (x0 >= 2610 and x0 <= 2611) or
             (x0 >= 2613 and x0 <= 2614) or (x0 >= 2616 and x0 <= 2617) or x0 === 2620 or
             (x0 >= 2622 and x0 <= 2626) or (x0 >= 2631 and x0 <= 2632) or
             (x0 >= 2635 and x0 <= 2637) or x0 === 2641 or (x0 >= 2649 and x0 <= 2652) or
             x0 === 2654 or (x0 >= 2662 and x0 <= 2677) or (x0 >= 2689 and x0 <= 2691) or
             (x0 >= 2693 and x0 <= 2701) or (x0 >= 2703 and x0 <= 2705) or
             (x0 >= 2707 and x0 <= 2728) or (x0 >= 2730 and x0 <= 2736) or
             (x0 >= 2738 and x0 <= 2739) or (x0 >= 2741 and x0 <= 2745) or
             (x0 >= 2748 and x0 <= 2757) or (x0 >= 2759 and x0 <= 2761) or
             (x0 >= 2763 and x0 <= 2765) or x0 === 2768 or (x0 >= 2784 and x0 <= 2787) or
             (x0 >= 2790 and x0 <= 2799) or (x0 >= 2809 and x0 <= 2815) or
             (x0 >= 2817 and x0 <= 2819) or (x0 >= 2821 and x0 <= 2828) or
             (x0 >= 2831 and x0 <= 2832) or (x0 >= 2835 and x0 <= 2856) or
             (x0 >= 2858 and x0 <= 2864) or (x0 >= 2866 and x0 <= 2867) or
             (x0 >= 2869 and x0 <= 2873) or (x0 >= 2876 and x0 <= 2884) or
             (x0 >= 2887 and x0 <= 2888) or (x0 >= 2891 and x0 <= 2893) or
             (x0 >= 2901 and x0 <= 2903) or (x0 >= 2908 and x0 <= 2909) or
             (x0 >= 2911 and x0 <= 2915) or (x0 >= 2918 and x0 <= 2927) or x0 === 2929 or
             (x0 >= 2946 and x0 <= 2947) or (x0 >= 2949 and x0 <= 2954) or
             (x0 >= 2958 and x0 <= 2960) or (x0 >= 2962 and x0 <= 2965) or
             (x0 >= 2969 and x0 <= 2970) or x0 === 2972 or (x0 >= 2974 and x0 <= 2975) or
             (x0 >= 2979 and x0 <= 2980) or (x0 >= 2984 and x0 <= 2986) or
             (x0 >= 2990 and x0 <= 3001) or (x0 >= 3006 and x0 <= 3010) or
             (x0 >= 3014 and x0 <= 3016) or (x0 >= 3018 and x0 <= 3021) or x0 === 3024 or
             x0 === 3031 or (x0 >= 3046 and x0 <= 3055) or (x0 >= 3072 and x0 <= 3084) or
             (x0 >= 3086 and x0 <= 3088) or (x0 >= 3090 and x0 <= 3112) or
             (x0 >= 3114 and x0 <= 3129) or (x0 >= 3133 and x0 <= 3140) or
             (x0 >= 3142 and x0 <= 3144) or (x0 >= 3146 and x0 <= 3149) or
             (x0 >= 3157 and x0 <= 3158) or (x0 >= 3160 and x0 <= 3162) or
             (x0 >= 3168 and x0 <= 3171) or (x0 >= 3174 and x0 <= 3183) or
             (x0 >= 3200 and x0 <= 3203) or (x0 >= 3205 and x0 <= 3212) or
             (x0 >= 3214 and x0 <= 3216) or (x0 >= 3218 and x0 <= 3240) or
             (x0 >= 3242 and x0 <= 3251) or (x0 >= 3253 and x0 <= 3257) or
             (x0 >= 3260 and x0 <= 3268) or (x0 >= 3270 and x0 <= 3272) or
             (x0 >= 3274 and x0 <= 3277) or (x0 >= 3285 and x0 <= 3286) or x0 === 3294 or
             (x0 >= 3296 and x0 <= 3299) or (x0 >= 3302 and x0 <= 3311) or
             (x0 >= 3313 and x0 <= 3314) or (x0 >= 3328 and x0 <= 3340) or
             (x0 >= 3342 and x0 <= 3344) or (x0 >= 3346 and x0 <= 3396) or
             (x0 >= 3398 and x0 <= 3400) or (x0 >= 3402 and x0 <= 3406) or
             (x0 >= 3412 and x0 <= 3415) or (x0 >= 3423 and x0 <= 3427) or
             (x0 >= 3430 and x0 <= 3439) or (x0 >= 3450 and x0 <= 3455) or
             (x0 >= 3457 and x0 <= 3459) or (x0 >= 3461 and x0 <= 3478) or
             (x0 >= 3482 and x0 <= 3505) or (x0 >= 3507 and x0 <= 3515) or x0 === 3517 or
             (x0 >= 3520 and x0 <= 3526) or x0 === 3530 or (x0 >= 3535 and x0 <= 3540) or
             x0 === 3542 or (x0 >= 3544 and x0 <= 3551) or (x0 >= 3558 and x0 <= 3567) or
             (x0 >= 3570 and x0 <= 3571) or (x0 >= 3585 and x0 <= 3642) or
             (x0 >= 3648 and x0 <= 3662) or (x0 >= 3664 and x0 <= 3673) or
             (x0 >= 3713 and x0 <= 3714) or x0 === 3716 or (x0 >= 3718 and x0 <= 3722) or
             (x0 >= 3724 and x0 <= 3747) or x0 === 3749 or (x0 >= 3751 and x0 <= 3773) or
             (x0 >= 3776 and x0 <= 3780) or x0 === 3782 or (x0 >= 3784 and x0 <= 3789) or
             (x0 >= 3792 and x0 <= 3801) or (x0 >= 3804 and x0 <= 3807) or x0 === 3840 or
             (x0 >= 3864 and x0 <= 3865) or (x0 >= 3872 and x0 <= 3881) or x0 === 3893 or
             x0 === 3895 or x0 === 3897 or (x0 >= 3902 and x0 <= 3911) or
             (x0 >= 3913 and x0 <= 3948) or (x0 >= 3953 and x0 <= 3972) or
             (x0 >= 3974 and x0 <= 3991) or (x0 >= 3993 and x0 <= 4028) or x0 === 4038 or
             (x0 >= 4096 and x0 <= 4169) or (x0 >= 4176 and x0 <= 4253) or
             (x0 >= 4256 and x0 <= 4293) or x0 === 4295 or x0 === 4301 or
             (x0 >= 4304 and x0 <= 4346) or (x0 >= 4348 and x0 <= 4680) or
             (x0 >= 4682 and x0 <= 4685) or (x0 >= 4688 and x0 <= 4694) or x0 === 4696 or
             (x0 >= 4698 and x0 <= 4701) or (x0 >= 4704 and x0 <= 4744) or
             (x0 >= 4746 and x0 <= 4749) or (x0 >= 4752 and x0 <= 4784) or
             (x0 >= 4786 and x0 <= 4789) or (x0 >= 4792 and x0 <= 4798) or x0 === 4800 or
             (x0 >= 4802 and x0 <= 4805) or (x0 >= 4808 and x0 <= 4822) or
             (x0 >= 4824 and x0 <= 4880) or (x0 >= 4882 and x0 <= 4885) or
             (x0 >= 4888 and x0 <= 4954) or (x0 >= 4957 and x0 <= 4959) or
             (x0 >= 4969 and x0 <= 4977) or (x0 >= 4992 and x0 <= 5007) or
             (x0 >= 5024 and x0 <= 5109) or (x0 >= 5112 and x0 <= 5117) or
             (x0 >= 5121 and x0 <= 5740) or (x0 >= 5743 and x0 <= 5759) or
             (x0 >= 5761 and x0 <= 5786) or (x0 >= 5792 and x0 <= 5866) or
             (x0 >= 5870 and x0 <= 5880) or (x0 >= 5888 and x0 <= 5900) or
             (x0 >= 5902 and x0 <= 5908) or (x0 >= 5920 and x0 <= 5940) or
             (x0 >= 5952 and x0 <= 5971) or (x0 >= 5984 and x0 <= 5996) or
             (x0 >= 5998 and x0 <= 6000) or (x0 >= 6002 and x0 <= 6003) or
             (x0 >= 6016 and x0 <= 6099) or x0 === 6103 or (x0 >= 6108 and x0 <= 6109) or
             (x0 >= 6112 and x0 <= 6121) or (x0 >= 6155 and x0 <= 6157) or
             (x0 >= 6160 and x0 <= 6169) or (x0 >= 6176 and x0 <= 6264) or
             (x0 >= 6272 and x0 <= 6314) or (x0 >= 6320 and x0 <= 6389) or
             (x0 >= 6400 and x0 <= 6430) or (x0 >= 6432 and x0 <= 6443) or
             (x0 >= 6448 and x0 <= 6459) or (x0 >= 6470 and x0 <= 6509) or
             (x0 >= 6512 and x0 <= 6516) or (x0 >= 6528 and x0 <= 6571) or
             (x0 >= 6576 and x0 <= 6601) or (x0 >= 6608 and x0 <= 6618) or
             (x0 >= 6656 and x0 <= 6683) or (x0 >= 6688 and x0 <= 6750) or
             (x0 >= 6752 and x0 <= 6780) or (x0 >= 6783 and x0 <= 6793) or
             (x0 >= 6800 and x0 <= 6809) or x0 === 6823 or (x0 >= 6832 and x0 <= 6845) or
             (x0 >= 6847 and x0 <= 6848) or (x0 >= 6912 and x0 <= 6987) or
             (x0 >= 6992 and x0 <= 7001) or (x0 >= 7019 and x0 <= 7027) or
             (x0 >= 7040 and x0 <= 7155) or (x0 >= 7168 and x0 <= 7223) or
             (x0 >= 7232 and x0 <= 7241) or (x0 >= 7245 and x0 <= 7293) or
             (x0 >= 7296 and x0 <= 7304) or (x0 >= 7312 and x0 <= 7354) or
             (x0 >= 7357 and x0 <= 7359) or (x0 >= 7376 and x0 <= 7378) or
             (x0 >= 7380 and x0 <= 7418) or (x0 >= 7424 and x0 <= 7673) or
             (x0 >= 7675 and x0 <= 7957) or (x0 >= 7960 and x0 <= 7965) or
             (x0 >= 7968 and x0 <= 8005) or (x0 >= 8008 and x0 <= 8013) or
             (x0 >= 8016 and x0 <= 8023) or x0 === 8025 or x0 === 8027 or x0 === 8029 or
             (x0 >= 8031 and x0 <= 8061) or (x0 >= 8064 and x0 <= 8116) or
             (x0 >= 8118 and x0 <= 8124) or x0 === 8126 or (x0 >= 8130 and x0 <= 8132) or
             (x0 >= 8134 and x0 <= 8140) or (x0 >= 8144 and x0 <= 8147) or
             (x0 >= 8150 and x0 <= 8155) or (x0 >= 8160 and x0 <= 8172) or
             (x0 >= 8178 and x0 <= 8180) or (x0 >= 8182 and x0 <= 8188) or
             (x0 >= 8255 and x0 <= 8256) or x0 === 8276 or x0 === 8305 or x0 === 8319 or
             (x0 >= 8336 and x0 <= 8348) or (x0 >= 8400 and x0 <= 8412) or x0 === 8417 or
             (x0 >= 8421 and x0 <= 8432) or x0 === 8450 or x0 === 8455 or
             (x0 >= 8458 and x0 <= 8467) or x0 === 8469 or (x0 >= 8472 and x0 <= 8477) or
             x0 === 8484 or x0 === 8486 or x0 === 8488 or (x0 >= 8490 and x0 <= 8505) or
             (x0 >= 8508 and x0 <= 8511) or (x0 >= 8517 and x0 <= 8521) or x0 === 8526 or
             (x0 >= 8544 and x0 <= 8584) or (x0 >= 11264 and x0 <= 11310) or
             (x0 >= 11312 and x0 <= 11358) or (x0 >= 11360 and x0 <= 11492) or
             (x0 >= 11499 and x0 <= 11507) or (x0 >= 11520 and x0 <= 11557) or x0 === 11559 or
             x0 === 11565 or (x0 >= 11568 and x0 <= 11623) or x0 === 11631 or
             (x0 >= 11647 and x0 <= 11670) or (x0 >= 11680 and x0 <= 11686) or
             (x0 >= 11688 and x0 <= 11694) or (x0 >= 11696 and x0 <= 11702) or
             (x0 >= 11704 and x0 <= 11710) or (x0 >= 11712 and x0 <= 11718) or
             (x0 >= 11720 and x0 <= 11726) or (x0 >= 11728 and x0 <= 11734) or
             (x0 >= 11736 and x0 <= 11742) or (x0 >= 11744 and x0 <= 11775) or
             (x0 >= 12293 and x0 <= 12295) or (x0 >= 12321 and x0 <= 12335) or
             (x0 >= 12337 and x0 <= 12341) or (x0 >= 12344 and x0 <= 12348) or
             (x0 >= 12353 and x0 <= 12438) or (x0 >= 12441 and x0 <= 12447) or
             (x0 >= 12449 and x0 <= 12538) or (x0 >= 12540 and x0 <= 12543) or
             (x0 >= 12549 and x0 <= 12591) or (x0 >= 12593 and x0 <= 12686) or
             (x0 >= 12704 and x0 <= 12735) or (x0 >= 12784 and x0 <= 12799) or
             (x0 >= 13312 and x0 <= 19903) or (x0 >= 19968 and x0 <= 40956) or
             (x0 >= 40960 and x0 <= 42124) or (x0 >= 42192 and x0 <= 42237) or
             (x0 >= 42240 and x0 <= 42508) or (x0 >= 42512 and x0 <= 42539) or
             (x0 >= 42560 and x0 <= 42607) or (x0 >= 42612 and x0 <= 42621) or
             (x0 >= 42623 and x0 <= 42737) or (x0 >= 42775 and x0 <= 42783) or
             (x0 >= 42786 and x0 <= 42888) or (x0 >= 42891 and x0 <= 42943) or
             (x0 >= 42946 and x0 <= 42954) or (x0 >= 42997 and x0 <= 43047) or x0 === 43052 or
             (x0 >= 43072 and x0 <= 43123) or (x0 >= 43136 and x0 <= 43205) or
             (x0 >= 43216 and x0 <= 43225) or (x0 >= 43232 and x0 <= 43255) or x0 === 43259 or
             (x0 >= 43261 and x0 <= 43309) or (x0 >= 43312 and x0 <= 43347) or
             (x0 >= 43360 and x0 <= 43388) or (x0 >= 43392 and x0 <= 43456) or
             (x0 >= 43471 and x0 <= 43481) or (x0 >= 43488 and x0 <= 43518) or
             (x0 >= 43520 and x0 <= 43574) or (x0 >= 43584 and x0 <= 43597) or
             (x0 >= 43600 and x0 <= 43609) or (x0 >= 43616 and x0 <= 43638) or
             (x0 >= 43642 and x0 <= 43714) or (x0 >= 43739 and x0 <= 43741) or
             (x0 >= 43744 and x0 <= 43759) or (x0 >= 43762 and x0 <= 43766) or
             (x0 >= 43777 and x0 <= 43782) or (x0 >= 43785 and x0 <= 43790) or
             (x0 >= 43793 and x0 <= 43798) or (x0 >= 43808 and x0 <= 43814) or
             (x0 >= 43816 and x0 <= 43822) or (x0 >= 43824 and x0 <= 43866) or
             (x0 >= 43868 and x0 <= 43881) or (x0 >= 43888 and x0 <= 44010) or
             (x0 >= 44012 and x0 <= 44013) or (x0 >= 44016 and x0 <= 44025) or
             (x0 >= 44032 and x0 <= 55203) or (x0 >= 55216 and x0 <= 55238) or
             (x0 >= 55243 and x0 <= 55291) or (x0 >= 63744 and x0 <= 64109) or
             (x0 >= 64112 and x0 <= 64217) or (x0 >= 64256 and x0 <= 64262) or
             (x0 >= 64275 and x0 <= 64279) or (x0 >= 64285 and x0 <= 64296) or
             (x0 >= 64298 and x0 <= 64310) or (x0 >= 64312 and x0 <= 64316) or x0 === 64318 or
             (x0 >= 64320 and x0 <= 64321) or (x0 >= 64323 and x0 <= 64324) or
             (x0 >= 64326 and x0 <= 64433) or (x0 >= 64467 and x0 <= 64829) or
             (x0 >= 64848 and x0 <= 64911) or (x0 >= 64914 and x0 <= 64967) or
             (x0 >= 65008 and x0 <= 65019) or (x0 >= 65024 and x0 <= 65039) or
             (x0 >= 65056 and x0 <= 65071) or (x0 >= 65075 and x0 <= 65076) or
             (x0 >= 65101 and x0 <= 65103) or (x0 >= 65136 and x0 <= 65140) or
             (x0 >= 65142 and x0 <= 65276) or (x0 >= 65296 and x0 <= 65305) or
             (x0 >= 65313 and x0 <= 65338) or x0 === 65343 or (x0 >= 65345 and x0 <= 65370) or
             (x0 >= 65382 and x0 <= 65470) or (x0 >= 65474 and x0 <= 65479) or
             (x0 >= 65482 and x0 <= 65487) or (x0 >= 65490 and x0 <= 65495) or
             (x0 >= 65498 and x0 <= 65500) or (x0 >= 65536 and x0 <= 65547) or
             (x0 >= 65549 and x0 <= 65574) or (x0 >= 65576 and x0 <= 65594) or
             (x0 >= 65596 and x0 <= 65597) or (x0 >= 65599 and x0 <= 65613) or
             (x0 >= 65616 and x0 <= 65629) or (x0 >= 65664 and x0 <= 65786) or
             (x0 >= 65856 and x0 <= 65908) or x0 === 66045 or (x0 >= 66176 and x0 <= 66204) or
             (x0 >= 66208 and x0 <= 66256) or x0 === 66272 or (x0 >= 66304 and x0 <= 66335) or
             (x0 >= 66349 and x0 <= 66378) or (x0 >= 66384 and x0 <= 66426) or
             (x0 >= 66432 and x0 <= 66461) or (x0 >= 66464 and x0 <= 66499) or
             (x0 >= 66504 and x0 <= 66511) or (x0 >= 66513 and x0 <= 66517) or
             (x0 >= 66560 and x0 <= 66717) or (x0 >= 66720 and x0 <= 66729) or
             (x0 >= 66736 and x0 <= 66771) or (x0 >= 66776 and x0 <= 66811) or
             (x0 >= 66816 and x0 <= 66855) or (x0 >= 66864 and x0 <= 66915) or
             (x0 >= 67072 and x0 <= 67382) or (x0 >= 67392 and x0 <= 67413) or
             (x0 >= 67424 and x0 <= 67431) or (x0 >= 67584 and x0 <= 67589) or x0 === 67592 or
             (x0 >= 67594 and x0 <= 67637) or (x0 >= 67639 and x0 <= 67640) or x0 === 67644 or
             (x0 >= 67647 and x0 <= 67669) or (x0 >= 67680 and x0 <= 67702) or
             (x0 >= 67712 and x0 <= 67742) or (x0 >= 67808 and x0 <= 67826) or
             (x0 >= 67828 and x0 <= 67829) or (x0 >= 67840 and x0 <= 67861) or
             (x0 >= 67872 and x0 <= 67897) or (x0 >= 67968 and x0 <= 68023) or
             (x0 >= 68030 and x0 <= 68031) or (x0 >= 68096 and x0 <= 68099) or
             (x0 >= 68101 and x0 <= 68102) or (x0 >= 68108 and x0 <= 68115) or
             (x0 >= 68117 and x0 <= 68119) or (x0 >= 68121 and x0 <= 68149) or
             (x0 >= 68152 and x0 <= 68154) or x0 === 68159 or (x0 >= 68192 and x0 <= 68220) or
             (x0 >= 68224 and x0 <= 68252) or (x0 >= 68288 and x0 <= 68295) or
             (x0 >= 68297 and x0 <= 68326) or (x0 >= 68352 and x0 <= 68405) or
             (x0 >= 68416 and x0 <= 68437) or (x0 >= 68448 and x0 <= 68466) or
             (x0 >= 68480 and x0 <= 68497) or (x0 >= 68608 and x0 <= 68680) or
             (x0 >= 68736 and x0 <= 68786) or (x0 >= 68800 and x0 <= 68850) or
             (x0 >= 68864 and x0 <= 68903) or (x0 >= 68912 and x0 <= 68921) or
             (x0 >= 69248 and x0 <= 69289) or (x0 >= 69291 and x0 <= 69292) or
             (x0 >= 69296 and x0 <= 69297) or (x0 >= 69376 and x0 <= 69404) or x0 === 69415 or
             (x0 >= 69424 and x0 <= 69456) or (x0 >= 69552 and x0 <= 69572) or
             (x0 >= 69600 and x0 <= 69622) or (x0 >= 69632 and x0 <= 69702) or
             (x0 >= 69734 and x0 <= 69743) or (x0 >= 69759 and x0 <= 69818) or
             (x0 >= 69840 and x0 <= 69864) or (x0 >= 69872 and x0 <= 69881) or
             (x0 >= 69888 and x0 <= 69940) or (x0 >= 69942 and x0 <= 69951) or
             (x0 >= 69956 and x0 <= 69959) or (x0 >= 69968 and x0 <= 70003) or x0 === 70006 or
             (x0 >= 70016 and x0 <= 70084) or (x0 >= 70089 and x0 <= 70092) or
             (x0 >= 70094 and x0 <= 70106) or x0 === 70108 or (x0 >= 70144 and x0 <= 70161) or
             (x0 >= 70163 and x0 <= 70199) or x0 === 70206 or (x0 >= 70272 and x0 <= 70278) or
             x0 === 70280 or (x0 >= 70282 and x0 <= 70285) or (x0 >= 70287 and x0 <= 70301) or
             (x0 >= 70303 and x0 <= 70312) or (x0 >= 70320 and x0 <= 70378) or
             (x0 >= 70384 and x0 <= 70393) or (x0 >= 70400 and x0 <= 70403) or
             (x0 >= 70405 and x0 <= 70412) or (x0 >= 70415 and x0 <= 70416) or
             (x0 >= 70419 and x0 <= 70440) or (x0 >= 70442 and x0 <= 70448) or
             (x0 >= 70450 and x0 <= 70451) or (x0 >= 70453 and x0 <= 70457) or
             (x0 >= 70459 and x0 <= 70468) or (x0 >= 70471 and x0 <= 70472) or
             (x0 >= 70475 and x0 <= 70477) or x0 === 70480 or x0 === 70487 or
             (x0 >= 70493 and x0 <= 70499) or (x0 >= 70502 and x0 <= 70508) or
             (x0 >= 70512 and x0 <= 70516) or (x0 >= 70656 and x0 <= 70730) or
             (x0 >= 70736 and x0 <= 70745) or (x0 >= 70750 and x0 <= 70753) or
             (x0 >= 70784 and x0 <= 70853) or x0 === 70855 or (x0 >= 70864 and x0 <= 70873) or
             (x0 >= 71040 and x0 <= 71093) or (x0 >= 71096 and x0 <= 71104) or
             (x0 >= 71128 and x0 <= 71133) or (x0 >= 71168 and x0 <= 71232) or x0 === 71236 or
             (x0 >= 71248 and x0 <= 71257) or (x0 >= 71296 and x0 <= 71352) or
             (x0 >= 71360 and x0 <= 71369) or (x0 >= 71424 and x0 <= 71450) or
             (x0 >= 71453 and x0 <= 71467) or (x0 >= 71472 and x0 <= 71481) or
             (x0 >= 71680 and x0 <= 71738) or (x0 >= 71840 and x0 <= 71913) or
             (x0 >= 71935 and x0 <= 71942) or x0 === 71945 or (x0 >= 71948 and x0 <= 71955) or
             (x0 >= 71957 and x0 <= 71958) or (x0 >= 71960 and x0 <= 71989) or
             (x0 >= 71991 and x0 <= 71992) or (x0 >= 71995 and x0 <= 72003) or
             (x0 >= 72016 and x0 <= 72025) or (x0 >= 72096 and x0 <= 72103) or
             (x0 >= 72106 and x0 <= 72151) or (x0 >= 72154 and x0 <= 72161) or
             (x0 >= 72163 and x0 <= 72164) or (x0 >= 72192 and x0 <= 72254) or x0 === 72263 or
             (x0 >= 72272 and x0 <= 72345) or x0 === 72349 or (x0 >= 72384 and x0 <= 72440) or
             (x0 >= 72704 and x0 <= 72712) or (x0 >= 72714 and x0 <= 72758) or
             (x0 >= 72760 and x0 <= 72768) or (x0 >= 72784 and x0 <= 72793) or
             (x0 >= 72818 and x0 <= 72847) or (x0 >= 72850 and x0 <= 72871) or
             (x0 >= 72873 and x0 <= 72886) or (x0 >= 72960 and x0 <= 72966) or
             (x0 >= 72968 and x0 <= 72969) or (x0 >= 72971 and x0 <= 73014) or x0 === 73018 or
             (x0 >= 73020 and x0 <= 73021) or (x0 >= 73023 and x0 <= 73031) or
             (x0 >= 73040 and x0 <= 73049) or (x0 >= 73056 and x0 <= 73061) or
             (x0 >= 73063 and x0 <= 73064) or (x0 >= 73066 and x0 <= 73102) or
             (x0 >= 73104 and x0 <= 73105) or (x0 >= 73107 and x0 <= 73112) or
             (x0 >= 73120 and x0 <= 73129) or (x0 >= 73440 and x0 <= 73462) or x0 === 73648 or
             (x0 >= 73728 and x0 <= 74649) or (x0 >= 74752 and x0 <= 74862) or
             (x0 >= 74880 and x0 <= 75075) or (x0 >= 77824 and x0 <= 78894) or
             (x0 >= 82944 and x0 <= 83526) or (x0 >= 92160 and x0 <= 92728) or
             (x0 >= 92736 and x0 <= 92766) or (x0 >= 92768 and x0 <= 92777) or
             (x0 >= 92880 and x0 <= 92909) or (x0 >= 92912 and x0 <= 92916) or
             (x0 >= 92928 and x0 <= 92982) or (x0 >= 92992 and x0 <= 92995) or
             (x0 >= 93008 and x0 <= 93017) or (x0 >= 93027 and x0 <= 93047) or
             (x0 >= 93053 and x0 <= 93071) or (x0 >= 93760 and x0 <= 93823) or
             (x0 >= 93952 and x0 <= 94026) or (x0 >= 94031 and x0 <= 94087) or
             (x0 >= 94095 and x0 <= 94111) or (x0 >= 94176 and x0 <= 94177) or
             (x0 >= 94179 and x0 <= 94180) or (x0 >= 94192 and x0 <= 94193) or
             (x0 >= 94208 and x0 <= 100_343) or (x0 >= 100_352 and x0 <= 101_589) or
             (x0 >= 101_632 and x0 <= 101_640) or (x0 >= 110_592 and x0 <= 110_878) or
             (x0 >= 110_928 and x0 <= 110_930) or (x0 >= 110_948 and x0 <= 110_951) or
             (x0 >= 110_960 and x0 <= 111_355) or (x0 >= 113_664 and x0 <= 113_770) or
             (x0 >= 113_776 and x0 <= 113_788) or (x0 >= 113_792 and x0 <= 113_800) or
             (x0 >= 113_808 and x0 <= 113_817) or (x0 >= 113_821 and x0 <= 113_822) or
             (x0 >= 119_141 and x0 <= 119_145) or (x0 >= 119_149 and x0 <= 119_154) or
             (x0 >= 119_163 and x0 <= 119_170) or (x0 >= 119_173 and x0 <= 119_179) or
             (x0 >= 119_210 and x0 <= 119_213) or (x0 >= 119_362 and x0 <= 119_364) or
             (x0 >= 119_808 and x0 <= 119_892) or (x0 >= 119_894 and x0 <= 119_964) or
             (x0 >= 119_966 and x0 <= 119_967) or x0 === 119_970 or
             (x0 >= 119_973 and x0 <= 119_974) or (x0 >= 119_977 and x0 <= 119_980) or
             (x0 >= 119_982 and x0 <= 119_993) or x0 === 119_995 or
             (x0 >= 119_997 and x0 <= 120_003) or (x0 >= 120_005 and x0 <= 120_069) or
             (x0 >= 120_071 and x0 <= 120_074) or (x0 >= 120_077 and x0 <= 120_084) or
             (x0 >= 120_086 and x0 <= 120_092) or (x0 >= 120_094 and x0 <= 120_121) or
             (x0 >= 120_123 and x0 <= 120_126) or (x0 >= 120_128 and x0 <= 120_132) or
             x0 === 120_134 or (x0 >= 120_138 and x0 <= 120_144) or
             (x0 >= 120_146 and x0 <= 120_485) or (x0 >= 120_488 and x0 <= 120_512) or
             (x0 >= 120_514 and x0 <= 120_538) or (x0 >= 120_540 and x0 <= 120_570) or
             (x0 >= 120_572 and x0 <= 120_596) or (x0 >= 120_598 and x0 <= 120_628) or
             (x0 >= 120_630 and x0 <= 120_654) or (x0 >= 120_656 and x0 <= 120_686) or
             (x0 >= 120_688 and x0 <= 120_712) or (x0 >= 120_714 and x0 <= 120_744) or
             (x0 >= 120_746 and x0 <= 120_770) or (x0 >= 120_772 and x0 <= 120_779) or
             (x0 >= 120_782 and x0 <= 120_831) or (x0 >= 121_344 and x0 <= 121_398) or
             (x0 >= 121_403 and x0 <= 121_452) or x0 === 121_461 or x0 === 121_476 or
             (x0 >= 121_499 and x0 <= 121_503) or (x0 >= 121_505 and x0 <= 121_519) or
             (x0 >= 122_880 and x0 <= 122_886) or (x0 >= 122_888 and x0 <= 122_904) or
             (x0 >= 122_907 and x0 <= 122_913) or (x0 >= 122_915 and x0 <= 122_916) or
             (x0 >= 122_918 and x0 <= 122_922) or (x0 >= 123_136 and x0 <= 123_180) or
             (x0 >= 123_184 and x0 <= 123_197) or (x0 >= 123_200 and x0 <= 123_209) or
             x0 === 123_214 or (x0 >= 123_584 and x0 <= 123_641) or
             (x0 >= 124_928 and x0 <= 125_124) or (x0 >= 125_136 and x0 <= 125_142) or
             (x0 >= 125_184 and x0 <= 125_259) or (x0 >= 125_264 and x0 <= 125_273) or
             (x0 >= 126_464 and x0 <= 126_467) or (x0 >= 126_469 and x0 <= 126_495) or
             (x0 >= 126_497 and x0 <= 126_498) or x0 === 126_500 or x0 === 126_503 or
             (x0 >= 126_505 and x0 <= 126_514) or (x0 >= 126_516 and x0 <= 126_519) or
             x0 === 126_521 or x0 === 126_523 or x0 === 126_530 or x0 === 126_535 or
             x0 === 126_537 or x0 === 126_539 or (x0 >= 126_541 and x0 <= 126_543) or
             (x0 >= 126_545 and x0 <= 126_546) or x0 === 126_548 or x0 === 126_551 or
             x0 === 126_553 or x0 === 126_555 or x0 === 126_557 or x0 === 126_559 or
             (x0 >= 126_561 and x0 <= 126_562) or x0 === 126_564 or
             (x0 >= 126_567 and x0 <= 126_570) or (x0 >= 126_572 and x0 <= 126_578) or
             (x0 >= 126_580 and x0 <= 126_583) or (x0 >= 126_585 and x0 <= 126_588) or
             x0 === 126_590 or (x0 >= 126_592 and x0 <= 126_601) or
             (x0 >= 126_603 and x0 <= 126_619) or (x0 >= 126_625 and x0 <= 126_627) or
             (x0 >= 126_629 and x0 <= 126_633) or (x0 >= 126_635 and x0 <= 126_651) or
             (x0 >= 130_032 and x0 <= 130_041) or (x0 >= 131_072 and x0 <= 173_789) or
             (x0 >= 173_824 and x0 <= 177_972) or (x0 >= 177_984 and x0 <= 178_205) or
             (x0 >= 178_208 and x0 <= 183_969) or (x0 >= 183_984 and x0 <= 191_456) or
             (x0 >= 194_560 and x0 <= 195_101) or (x0 >= 196_608 and x0 <= 201_546) or
             (x0 >= 917_760 and x0 <= 917_999) do
    variable_continue_chars__1(
      rest,
      [x0] ++ acc,
      stack,
      context,
      comb__line,
      comb__offset + byte_size(<<x0::utf8>>)
    )
  end

  def variable_continue_chars__0(rest, _acc, _stack, context, line, offset) do
    {:error, "expected variable continue", rest, context, line, offset}
  end

  def variable_continue_chars__1(rest, acc, _stack, context, line, offset) do
    {:ok, acc, rest, context, line, offset}
  end

  def variable_start_chars__0(
        <<x0::utf8, rest::binary>>,
        acc,
        stack,
        context,
        comb__line,
        comb__offset
      )
      when x0 === 95 or (x0 >= 97 and x0 <= 122) or x0 === 170 or x0 === 181 or x0 === 186 or
             (x0 >= 223 and x0 <= 246) or (x0 >= 248 and x0 <= 255) or x0 === 257 or x0 === 259 or
             x0 === 261 or x0 === 263 or x0 === 265 or x0 === 267 or x0 === 269 or x0 === 271 or
             x0 === 273 or x0 === 275 or x0 === 277 or x0 === 279 or x0 === 281 or x0 === 283 or
             x0 === 285 or x0 === 287 or x0 === 289 or x0 === 291 or x0 === 293 or x0 === 295 or
             x0 === 297 or x0 === 299 or x0 === 301 or x0 === 303 or x0 === 305 or x0 === 307 or
             x0 === 309 or (x0 >= 311 and x0 <= 312) or x0 === 314 or x0 === 316 or x0 === 318 or
             x0 === 320 or x0 === 322 or x0 === 324 or x0 === 326 or (x0 >= 328 and x0 <= 329) or
             x0 === 331 or x0 === 333 or x0 === 335 or x0 === 337 or x0 === 339 or x0 === 341 or
             x0 === 343 or x0 === 345 or x0 === 347 or x0 === 349 or x0 === 351 or x0 === 353 or
             x0 === 355 or x0 === 357 or x0 === 359 or x0 === 361 or x0 === 363 or x0 === 365 or
             x0 === 367 or x0 === 369 or x0 === 371 or x0 === 373 or x0 === 375 or x0 === 378 or
             x0 === 380 or (x0 >= 382 and x0 <= 384) or x0 === 387 or x0 === 389 or x0 === 392 or
             (x0 >= 396 and x0 <= 397) or x0 === 402 or x0 === 405 or (x0 >= 409 and x0 <= 411) or
             x0 === 414 or x0 === 417 or x0 === 419 or x0 === 421 or x0 === 424 or
             (x0 >= 426 and x0 <= 427) or x0 === 429 or x0 === 432 or x0 === 436 or x0 === 438 or
             (x0 >= 441 and x0 <= 443) or (x0 >= 445 and x0 <= 451) or x0 === 454 or x0 === 457 or
             x0 === 460 or x0 === 462 or x0 === 464 or x0 === 466 or x0 === 468 or x0 === 470 or
             x0 === 472 or x0 === 474 or (x0 >= 476 and x0 <= 477) or x0 === 479 or x0 === 481 or
             x0 === 483 or x0 === 485 or x0 === 487 or x0 === 489 or x0 === 491 or x0 === 493 or
             (x0 >= 495 and x0 <= 496) or x0 === 499 or x0 === 501 or x0 === 505 or x0 === 507 or
             x0 === 509 or x0 === 511 or x0 === 513 or x0 === 515 or x0 === 517 or x0 === 519 or
             x0 === 521 or x0 === 523 or x0 === 525 or x0 === 527 or x0 === 529 or x0 === 531 or
             x0 === 533 or x0 === 535 or x0 === 537 or x0 === 539 or x0 === 541 or x0 === 543 or
             x0 === 545 or x0 === 547 or x0 === 549 or x0 === 551 or x0 === 553 or x0 === 555 or
             x0 === 557 or x0 === 559 or x0 === 561 or (x0 >= 563 and x0 <= 569) or x0 === 572 or
             (x0 >= 575 and x0 <= 576) or x0 === 578 or x0 === 583 or x0 === 585 or x0 === 587 or
             x0 === 589 or (x0 >= 591 and x0 <= 705) or (x0 >= 710 and x0 <= 721) or
             (x0 >= 736 and x0 <= 740) or x0 === 748 or x0 === 750 or (x0 >= 881 and x0 <= 884) or
             x0 === 887 or (x0 >= 890 and x0 <= 893) or (x0 >= 912 and x0 <= 929) or
             (x0 >= 940 and x0 <= 1013) or (x0 >= 1016 and x0 <= 1153) or
             (x0 >= 1163 and x0 <= 1327) or x0 === 1369 or (x0 >= 1376 and x0 <= 1416) or
             (x0 >= 1488 and x0 <= 1514) or (x0 >= 1519 and x0 <= 1522) or
             (x0 >= 1568 and x0 <= 1610) or (x0 >= 1646 and x0 <= 1647) or
             (x0 >= 1649 and x0 <= 1747) or x0 === 1749 or (x0 >= 1765 and x0 <= 1766) or
             (x0 >= 1774 and x0 <= 1775) or (x0 >= 1786 and x0 <= 1788) or x0 === 1791 or
             x0 === 1808 or (x0 >= 1810 and x0 <= 1839) or (x0 >= 1869 and x0 <= 1957) or
             x0 === 1969 or (x0 >= 1994 and x0 <= 2026) or (x0 >= 2036 and x0 <= 2037) or
             x0 === 2042 or (x0 >= 2048 and x0 <= 2069) or x0 === 2074 or x0 === 2084 or
             x0 === 2088 or (x0 >= 2112 and x0 <= 2136) or (x0 >= 2144 and x0 <= 2154) or
             (x0 >= 2208 and x0 <= 2228) or (x0 >= 2230 and x0 <= 2247) or
             (x0 >= 2308 and x0 <= 2361) or x0 === 2365 or x0 === 2384 or
             (x0 >= 2392 and x0 <= 2401) or (x0 >= 2417 and x0 <= 2432) or
             (x0 >= 2437 and x0 <= 2444) or (x0 >= 2447 and x0 <= 2448) or
             (x0 >= 2451 and x0 <= 2472) or (x0 >= 2474 and x0 <= 2480) or x0 === 2482 or
             (x0 >= 2486 and x0 <= 2489) or x0 === 2493 or x0 === 2510 or
             (x0 >= 2524 and x0 <= 2525) or (x0 >= 2527 and x0 <= 2529) or
             (x0 >= 2544 and x0 <= 2545) or x0 === 2556 or (x0 >= 2565 and x0 <= 2570) or
             (x0 >= 2575 and x0 <= 2576) or (x0 >= 2579 and x0 <= 2600) or
             (x0 >= 2602 and x0 <= 2608) or (x0 >= 2610 and x0 <= 2611) or
             (x0 >= 2613 and x0 <= 2614) or (x0 >= 2616 and x0 <= 2617) or
             (x0 >= 2649 and x0 <= 2652) or x0 === 2654 or (x0 >= 2674 and x0 <= 2676) or
             (x0 >= 2693 and x0 <= 2701) or (x0 >= 2703 and x0 <= 2705) or
             (x0 >= 2707 and x0 <= 2728) or (x0 >= 2730 and x0 <= 2736) or
             (x0 >= 2738 and x0 <= 2739) or (x0 >= 2741 and x0 <= 2745) or x0 === 2749 or
             x0 === 2768 or (x0 >= 2784 and x0 <= 2785) or x0 === 2809 or
             (x0 >= 2821 and x0 <= 2828) or (x0 >= 2831 and x0 <= 2832) or
             (x0 >= 2835 and x0 <= 2856) or (x0 >= 2858 and x0 <= 2864) or
             (x0 >= 2866 and x0 <= 2867) or (x0 >= 2869 and x0 <= 2873) or x0 === 2877 or
             (x0 >= 2908 and x0 <= 2909) or (x0 >= 2911 and x0 <= 2913) or x0 === 2929 or
             x0 === 2947 or (x0 >= 2949 and x0 <= 2954) or (x0 >= 2958 and x0 <= 2960) or
             (x0 >= 2962 and x0 <= 2965) or (x0 >= 2969 and x0 <= 2970) or x0 === 2972 or
             (x0 >= 2974 and x0 <= 2975) or (x0 >= 2979 and x0 <= 2980) or
             (x0 >= 2984 and x0 <= 2986) or (x0 >= 2990 and x0 <= 3001) or x0 === 3024 or
             (x0 >= 3077 and x0 <= 3084) or (x0 >= 3086 and x0 <= 3088) or
             (x0 >= 3090 and x0 <= 3112) or (x0 >= 3114 and x0 <= 3129) or x0 === 3133 or
             (x0 >= 3160 and x0 <= 3162) or (x0 >= 3168 and x0 <= 3169) or x0 === 3200 or
             (x0 >= 3205 and x0 <= 3212) or (x0 >= 3214 and x0 <= 3216) or
             (x0 >= 3218 and x0 <= 3240) or (x0 >= 3242 and x0 <= 3251) or
             (x0 >= 3253 and x0 <= 3257) or x0 === 3261 or x0 === 3294 or
             (x0 >= 3296 and x0 <= 3297) or (x0 >= 3313 and x0 <= 3314) or
             (x0 >= 3332 and x0 <= 3340) or (x0 >= 3342 and x0 <= 3344) or
             (x0 >= 3346 and x0 <= 3386) or x0 === 3389 or x0 === 3406 or
             (x0 >= 3412 and x0 <= 3414) or (x0 >= 3423 and x0 <= 3425) or
             (x0 >= 3450 and x0 <= 3455) or (x0 >= 3461 and x0 <= 3478) or
             (x0 >= 3482 and x0 <= 3505) or (x0 >= 3507 and x0 <= 3515) or x0 === 3517 or
             (x0 >= 3520 and x0 <= 3526) or (x0 >= 3585 and x0 <= 3632) or
             (x0 >= 3634 and x0 <= 3635) or (x0 >= 3648 and x0 <= 3654) or
             (x0 >= 3713 and x0 <= 3714) or x0 === 3716 or (x0 >= 3718 and x0 <= 3722) or
             (x0 >= 3724 and x0 <= 3747) or x0 === 3749 or (x0 >= 3751 and x0 <= 3760) or
             (x0 >= 3762 and x0 <= 3763) or x0 === 3773 or (x0 >= 3776 and x0 <= 3780) or
             x0 === 3782 or (x0 >= 3804 and x0 <= 3807) or x0 === 3840 or
             (x0 >= 3904 and x0 <= 3911) or (x0 >= 3913 and x0 <= 3948) or
             (x0 >= 3976 and x0 <= 3980) or (x0 >= 4096 and x0 <= 4138) or x0 === 4159 or
             (x0 >= 4176 and x0 <= 4181) or (x0 >= 4186 and x0 <= 4189) or x0 === 4193 or
             (x0 >= 4197 and x0 <= 4198) or (x0 >= 4206 and x0 <= 4208) or
             (x0 >= 4213 and x0 <= 4225) or x0 === 4238 or (x0 >= 4304 and x0 <= 4346) or
             (x0 >= 4348 and x0 <= 4680) or (x0 >= 4682 and x0 <= 4685) or
             (x0 >= 4688 and x0 <= 4694) or x0 === 4696 or (x0 >= 4698 and x0 <= 4701) or
             (x0 >= 4704 and x0 <= 4744) or (x0 >= 4746 and x0 <= 4749) or
             (x0 >= 4752 and x0 <= 4784) or (x0 >= 4786 and x0 <= 4789) or
             (x0 >= 4792 and x0 <= 4798) or x0 === 4800 or (x0 >= 4802 and x0 <= 4805) or
             (x0 >= 4808 and x0 <= 4822) or (x0 >= 4824 and x0 <= 4880) or
             (x0 >= 4882 and x0 <= 4885) or (x0 >= 4888 and x0 <= 4954) or
             (x0 >= 4992 and x0 <= 5007) or (x0 >= 5112 and x0 <= 5117) or
             (x0 >= 5121 and x0 <= 5740) or (x0 >= 5743 and x0 <= 5759) or
             (x0 >= 5761 and x0 <= 5786) or (x0 >= 5792 and x0 <= 5866) or
             (x0 >= 5870 and x0 <= 5880) or (x0 >= 5888 and x0 <= 5900) or
             (x0 >= 5902 and x0 <= 5905) or (x0 >= 5920 and x0 <= 5937) or
             (x0 >= 5952 and x0 <= 5969) or (x0 >= 5984 and x0 <= 5996) or
             (x0 >= 5998 and x0 <= 6000) or (x0 >= 6016 and x0 <= 6067) or x0 === 6103 or
             x0 === 6108 or (x0 >= 6176 and x0 <= 6264) or (x0 >= 6272 and x0 <= 6312) or
             x0 === 6314 or (x0 >= 6320 and x0 <= 6389) or (x0 >= 6400 and x0 <= 6430) or
             (x0 >= 6480 and x0 <= 6509) or (x0 >= 6512 and x0 <= 6516) or
             (x0 >= 6528 and x0 <= 6571) or (x0 >= 6576 and x0 <= 6601) or
             (x0 >= 6656 and x0 <= 6678) or (x0 >= 6688 and x0 <= 6740) or x0 === 6823 or
             (x0 >= 6917 and x0 <= 6963) or (x0 >= 6981 and x0 <= 6987) or
             (x0 >= 7043 and x0 <= 7072) or (x0 >= 7086 and x0 <= 7087) or
             (x0 >= 7098 and x0 <= 7141) or (x0 >= 7168 and x0 <= 7203) or
             (x0 >= 7245 and x0 <= 7247) or (x0 >= 7258 and x0 <= 7293) or
             (x0 >= 7296 and x0 <= 7304) or (x0 >= 7401 and x0 <= 7404) or
             (x0 >= 7406 and x0 <= 7411) or (x0 >= 7413 and x0 <= 7414) or x0 === 7418 or
             (x0 >= 7424 and x0 <= 7615) or (x0 >= 7681 and x0 <= 7957) or
             (x0 >= 7968 and x0 <= 7975) or (x0 >= 7984 and x0 <= 7991) or
             (x0 >= 8000 and x0 <= 8005) or (x0 >= 8016 and x0 <= 8023) or
             (x0 >= 8032 and x0 <= 8061) or (x0 >= 8064 and x0 <= 8071) or
             (x0 >= 8080 and x0 <= 8087) or (x0 >= 8096 and x0 <= 8103) or
             (x0 >= 8112 and x0 <= 8116) or (x0 >= 8118 and x0 <= 8119) or x0 === 8126 or
             (x0 >= 8130 and x0 <= 8132) or (x0 >= 8134 and x0 <= 8135) or
             (x0 >= 8144 and x0 <= 8147) or (x0 >= 8150 and x0 <= 8151) or
             (x0 >= 8160 and x0 <= 8167) or (x0 >= 8178 and x0 <= 8180) or
             (x0 >= 8182 and x0 <= 8183) or x0 === 8305 or x0 === 8319 or
             (x0 >= 8336 and x0 <= 8348) or x0 === 8458 or (x0 >= 8462 and x0 <= 8463) or
             x0 === 8467 or x0 === 8472 or (x0 >= 8494 and x0 <= 8505) or
             (x0 >= 8508 and x0 <= 8509) or (x0 >= 8518 and x0 <= 8521) or x0 === 8526 or
             (x0 >= 8544 and x0 <= 8578) or (x0 >= 8580 and x0 <= 8584) or
             (x0 >= 11312 and x0 <= 11358) or (x0 >= 11361 and x0 <= 11492) or
             (x0 >= 11500 and x0 <= 11502) or x0 === 11507 or (x0 >= 11520 and x0 <= 11557) or
             x0 === 11559 or x0 === 11565 or (x0 >= 11568 and x0 <= 11623) or x0 === 11631 or
             (x0 >= 11648 and x0 <= 11670) or (x0 >= 11680 and x0 <= 11686) or
             (x0 >= 11688 and x0 <= 11694) or (x0 >= 11696 and x0 <= 11702) or
             (x0 >= 11704 and x0 <= 11710) or (x0 >= 11712 and x0 <= 11718) or
             (x0 >= 11720 and x0 <= 11726) or (x0 >= 11728 and x0 <= 11734) or
             (x0 >= 11736 and x0 <= 11742) or (x0 >= 12293 and x0 <= 12295) or
             (x0 >= 12321 and x0 <= 12329) or (x0 >= 12337 and x0 <= 12341) or
             (x0 >= 12344 and x0 <= 12348) or (x0 >= 12353 and x0 <= 12438) or
             (x0 >= 12443 and x0 <= 12447) or (x0 >= 12449 and x0 <= 12538) or
             (x0 >= 12540 and x0 <= 12543) or (x0 >= 12549 and x0 <= 12591) or
             (x0 >= 12593 and x0 <= 12686) or (x0 >= 12704 and x0 <= 12735) or
             (x0 >= 12784 and x0 <= 12799) or (x0 >= 13312 and x0 <= 19903) or
             (x0 >= 19968 and x0 <= 40956) or (x0 >= 40960 and x0 <= 42124) or
             (x0 >= 42192 and x0 <= 42237) or (x0 >= 42240 and x0 <= 42508) or
             (x0 >= 42512 and x0 <= 42527) or (x0 >= 42538 and x0 <= 42539) or
             (x0 >= 42561 and x0 <= 42606) or x0 === 42623 or x0 === 42625 or x0 === 42627 or
             x0 === 42629 or x0 === 42631 or x0 === 42633 or x0 === 42635 or x0 === 42637 or
             x0 === 42639 or x0 === 42641 or x0 === 42643 or x0 === 42645 or x0 === 42647 or
             x0 === 42649 or (x0 >= 42651 and x0 <= 42653) or (x0 >= 42656 and x0 <= 42735) or
             (x0 >= 42775 and x0 <= 42783) or (x0 >= 42787 and x0 <= 42888) or
             (x0 >= 42892 and x0 <= 42943) or (x0 >= 42947 and x0 <= 42954) or
             (x0 >= 42998 and x0 <= 43009) or (x0 >= 43011 and x0 <= 43013) or
             (x0 >= 43015 and x0 <= 43018) or (x0 >= 43020 and x0 <= 43042) or
             (x0 >= 43072 and x0 <= 43123) or (x0 >= 43138 and x0 <= 43187) or
             (x0 >= 43250 and x0 <= 43255) or x0 === 43259 or (x0 >= 43261 and x0 <= 43262) or
             (x0 >= 43274 and x0 <= 43301) or (x0 >= 43312 and x0 <= 43334) or
             (x0 >= 43360 and x0 <= 43388) or (x0 >= 43396 and x0 <= 43442) or x0 === 43471 or
             (x0 >= 43488 and x0 <= 43492) or (x0 >= 43494 and x0 <= 43503) or
             (x0 >= 43514 and x0 <= 43518) or (x0 >= 43520 and x0 <= 43560) or
             (x0 >= 43584 and x0 <= 43586) or (x0 >= 43588 and x0 <= 43595) or
             (x0 >= 43616 and x0 <= 43638) or x0 === 43642 or (x0 >= 43646 and x0 <= 43695) or
             x0 === 43697 or (x0 >= 43701 and x0 <= 43702) or (x0 >= 43705 and x0 <= 43709) or
             x0 === 43712 or x0 === 43714 or (x0 >= 43739 and x0 <= 43741) or
             (x0 >= 43744 and x0 <= 43754) or (x0 >= 43762 and x0 <= 43764) or
             (x0 >= 43777 and x0 <= 43782) or (x0 >= 43785 and x0 <= 43790) or
             (x0 >= 43793 and x0 <= 43798) or (x0 >= 43808 and x0 <= 43814) or
             (x0 >= 43816 and x0 <= 43822) or (x0 >= 43824 and x0 <= 43866) or
             (x0 >= 43868 and x0 <= 43881) or (x0 >= 43888 and x0 <= 44002) or
             (x0 >= 44032 and x0 <= 55203) or (x0 >= 55216 and x0 <= 55238) or
             (x0 >= 55243 and x0 <= 55291) or (x0 >= 63744 and x0 <= 64109) or
             (x0 >= 64112 and x0 <= 64217) or (x0 >= 64256 and x0 <= 64262) or
             (x0 >= 64275 and x0 <= 64279) or x0 === 64285 or (x0 >= 64287 and x0 <= 64296) or
             (x0 >= 64298 and x0 <= 64310) or (x0 >= 64312 and x0 <= 64316) or x0 === 64318 or
             (x0 >= 64320 and x0 <= 64321) or (x0 >= 64323 and x0 <= 64324) or
             (x0 >= 64326 and x0 <= 64433) or (x0 >= 64467 and x0 <= 64829) or
             (x0 >= 64848 and x0 <= 64911) or (x0 >= 64914 and x0 <= 64967) or
             (x0 >= 65008 and x0 <= 65019) or (x0 >= 65136 and x0 <= 65140) or
             (x0 >= 65142 and x0 <= 65276) or (x0 >= 65345 and x0 <= 65370) or
             (x0 >= 65382 and x0 <= 65470) or (x0 >= 65474 and x0 <= 65479) or
             (x0 >= 65482 and x0 <= 65487) or (x0 >= 65490 and x0 <= 65495) or
             (x0 >= 65498 and x0 <= 65500) or (x0 >= 65536 and x0 <= 65547) or
             (x0 >= 65549 and x0 <= 65574) or (x0 >= 65576 and x0 <= 65594) or
             (x0 >= 65596 and x0 <= 65597) or (x0 >= 65599 and x0 <= 65613) or
             (x0 >= 65616 and x0 <= 65629) or (x0 >= 65664 and x0 <= 65786) or
             (x0 >= 65856 and x0 <= 65908) or (x0 >= 66176 and x0 <= 66204) or
             (x0 >= 66208 and x0 <= 66256) or (x0 >= 66304 and x0 <= 66335) or
             (x0 >= 66349 and x0 <= 66378) or (x0 >= 66384 and x0 <= 66421) or
             (x0 >= 66432 and x0 <= 66461) or (x0 >= 66464 and x0 <= 66499) or
             (x0 >= 66504 and x0 <= 66511) or (x0 >= 66513 and x0 <= 66517) or
             (x0 >= 66600 and x0 <= 66717) or (x0 >= 66776 and x0 <= 66811) or
             (x0 >= 66816 and x0 <= 66855) or (x0 >= 66864 and x0 <= 66915) or
             (x0 >= 67072 and x0 <= 67382) or (x0 >= 67392 and x0 <= 67413) or
             (x0 >= 67424 and x0 <= 67431) or (x0 >= 67584 and x0 <= 67589) or x0 === 67592 or
             (x0 >= 67594 and x0 <= 67637) or (x0 >= 67639 and x0 <= 67640) or x0 === 67644 or
             (x0 >= 67647 and x0 <= 67669) or (x0 >= 67680 and x0 <= 67702) or
             (x0 >= 67712 and x0 <= 67742) or (x0 >= 67808 and x0 <= 67826) or
             (x0 >= 67828 and x0 <= 67829) or (x0 >= 67840 and x0 <= 67861) or
             (x0 >= 67872 and x0 <= 67897) or (x0 >= 67968 and x0 <= 68023) or
             (x0 >= 68030 and x0 <= 68031) or x0 === 68096 or (x0 >= 68112 and x0 <= 68115) or
             (x0 >= 68117 and x0 <= 68119) or (x0 >= 68121 and x0 <= 68149) or
             (x0 >= 68192 and x0 <= 68220) or (x0 >= 68224 and x0 <= 68252) or
             (x0 >= 68288 and x0 <= 68295) or (x0 >= 68297 and x0 <= 68324) or
             (x0 >= 68352 and x0 <= 68405) or (x0 >= 68416 and x0 <= 68437) or
             (x0 >= 68448 and x0 <= 68466) or (x0 >= 68480 and x0 <= 68497) or
             (x0 >= 68608 and x0 <= 68680) or (x0 >= 68800 and x0 <= 68850) or
             (x0 >= 68864 and x0 <= 68899) or (x0 >= 69248 and x0 <= 69289) or
             (x0 >= 69296 and x0 <= 69297) or (x0 >= 69376 and x0 <= 69404) or x0 === 69415 or
             (x0 >= 69424 and x0 <= 69445) or (x0 >= 69552 and x0 <= 69572) or
             (x0 >= 69600 and x0 <= 69622) or (x0 >= 69635 and x0 <= 69687) or
             (x0 >= 69763 and x0 <= 69807) or (x0 >= 69840 and x0 <= 69864) or
             (x0 >= 69891 and x0 <= 69926) or x0 === 69956 or x0 === 69959 or
             (x0 >= 69968 and x0 <= 70002) or x0 === 70006 or (x0 >= 70019 and x0 <= 70066) or
             (x0 >= 70081 and x0 <= 70084) or x0 === 70106 or x0 === 70108 or
             (x0 >= 70144 and x0 <= 70161) or (x0 >= 70163 and x0 <= 70187) or
             (x0 >= 70272 and x0 <= 70278) or x0 === 70280 or (x0 >= 70282 and x0 <= 70285) or
             (x0 >= 70287 and x0 <= 70301) or (x0 >= 70303 and x0 <= 70312) or
             (x0 >= 70320 and x0 <= 70366) or (x0 >= 70405 and x0 <= 70412) or
             (x0 >= 70415 and x0 <= 70416) or (x0 >= 70419 and x0 <= 70440) or
             (x0 >= 70442 and x0 <= 70448) or (x0 >= 70450 and x0 <= 70451) or
             (x0 >= 70453 and x0 <= 70457) or x0 === 70461 or x0 === 70480 or
             (x0 >= 70493 and x0 <= 70497) or (x0 >= 70656 and x0 <= 70708) or
             (x0 >= 70727 and x0 <= 70730) or (x0 >= 70751 and x0 <= 70753) or
             (x0 >= 70784 and x0 <= 70831) or (x0 >= 70852 and x0 <= 70853) or x0 === 70855 or
             (x0 >= 71040 and x0 <= 71086) or (x0 >= 71128 and x0 <= 71131) or
             (x0 >= 71168 and x0 <= 71215) or x0 === 71236 or (x0 >= 71296 and x0 <= 71338) or
             x0 === 71352 or (x0 >= 71424 and x0 <= 71450) or (x0 >= 71680 and x0 <= 71723) or
             (x0 >= 71872 and x0 <= 71903) or (x0 >= 71935 and x0 <= 71942) or x0 === 71945 or
             (x0 >= 71948 and x0 <= 71955) or (x0 >= 71957 and x0 <= 71958) or
             (x0 >= 71960 and x0 <= 71983) or x0 === 71999 or x0 === 72001 or
             (x0 >= 72096 and x0 <= 72103) or (x0 >= 72106 and x0 <= 72144) or x0 === 72161 or
             x0 === 72163 or x0 === 72192 or (x0 >= 72203 and x0 <= 72242) or x0 === 72250 or
             x0 === 72272 or (x0 >= 72284 and x0 <= 72329) or x0 === 72349 or
             (x0 >= 72384 and x0 <= 72440) or (x0 >= 72704 and x0 <= 72712) or
             (x0 >= 72714 and x0 <= 72750) or x0 === 72768 or (x0 >= 72818 and x0 <= 72847) or
             (x0 >= 72960 and x0 <= 72966) or (x0 >= 72968 and x0 <= 72969) or
             (x0 >= 72971 and x0 <= 73008) or x0 === 73030 or (x0 >= 73056 and x0 <= 73061) or
             (x0 >= 73063 and x0 <= 73064) or (x0 >= 73066 and x0 <= 73097) or x0 === 73112 or
             (x0 >= 73440 and x0 <= 73458) or x0 === 73648 or (x0 >= 73728 and x0 <= 74649) or
             (x0 >= 74752 and x0 <= 74862) or (x0 >= 74880 and x0 <= 75075) or
             (x0 >= 77824 and x0 <= 78894) or (x0 >= 82944 and x0 <= 83526) or
             (x0 >= 92160 and x0 <= 92728) or (x0 >= 92736 and x0 <= 92766) or
             (x0 >= 92880 and x0 <= 92909) or (x0 >= 92928 and x0 <= 92975) or
             (x0 >= 92992 and x0 <= 92995) or (x0 >= 93027 and x0 <= 93047) or
             (x0 >= 93053 and x0 <= 93071) or (x0 >= 93792 and x0 <= 93823) or
             (x0 >= 93952 and x0 <= 94026) or x0 === 94032 or (x0 >= 94099 and x0 <= 94111) or
             (x0 >= 94176 and x0 <= 94177) or x0 === 94179 or (x0 >= 94208 and x0 <= 100_343) or
             (x0 >= 100_352 and x0 <= 101_589) or (x0 >= 101_632 and x0 <= 101_640) or
             (x0 >= 110_592 and x0 <= 110_878) or (x0 >= 110_928 and x0 <= 110_930) or
             (x0 >= 110_948 and x0 <= 110_951) or (x0 >= 110_960 and x0 <= 111_355) or
             (x0 >= 113_664 and x0 <= 113_770) or (x0 >= 113_776 and x0 <= 113_788) or
             (x0 >= 113_792 and x0 <= 113_800) or (x0 >= 113_808 and x0 <= 113_817) or
             (x0 >= 119_834 and x0 <= 119_892) or (x0 >= 119_894 and x0 <= 119_911) or
             (x0 >= 119_938 and x0 <= 119_963) or (x0 >= 119_990 and x0 <= 119_993) or
             x0 === 119_995 or (x0 >= 119_997 and x0 <= 120_003) or
             (x0 >= 120_005 and x0 <= 120_015) or (x0 >= 120_042 and x0 <= 120_067) or
             (x0 >= 120_094 and x0 <= 120_119) or (x0 >= 120_146 and x0 <= 120_171) or
             (x0 >= 120_198 and x0 <= 120_223) or (x0 >= 120_250 and x0 <= 120_275) or
             (x0 >= 120_302 and x0 <= 120_327) or (x0 >= 120_354 and x0 <= 120_379) or
             (x0 >= 120_406 and x0 <= 120_431) or (x0 >= 120_458 and x0 <= 120_485) or
             (x0 >= 120_514 and x0 <= 120_538) or (x0 >= 120_540 and x0 <= 120_545) or
             (x0 >= 120_572 and x0 <= 120_596) or (x0 >= 120_598 and x0 <= 120_603) or
             (x0 >= 120_630 and x0 <= 120_654) or (x0 >= 120_656 and x0 <= 120_661) or
             (x0 >= 120_688 and x0 <= 120_712) or (x0 >= 120_714 and x0 <= 120_719) or
             (x0 >= 120_746 and x0 <= 120_770) or (x0 >= 120_772 and x0 <= 120_777) or
             x0 === 120_779 or (x0 >= 123_136 and x0 <= 123_180) or
             (x0 >= 123_191 and x0 <= 123_197) or x0 === 123_214 or
             (x0 >= 123_584 and x0 <= 123_627) or (x0 >= 124_928 and x0 <= 125_124) or
             (x0 >= 125_218 and x0 <= 125_251) or x0 === 125_259 or
             (x0 >= 126_464 and x0 <= 126_467) or (x0 >= 126_469 and x0 <= 126_495) or
             (x0 >= 126_497 and x0 <= 126_498) or x0 === 126_500 or x0 === 126_503 or
             (x0 >= 126_505 and x0 <= 126_514) or (x0 >= 126_516 and x0 <= 126_519) or
             x0 === 126_521 or x0 === 126_523 or x0 === 126_530 or x0 === 126_535 or
             x0 === 126_537 or x0 === 126_539 or (x0 >= 126_541 and x0 <= 126_543) or
             (x0 >= 126_545 and x0 <= 126_546) or x0 === 126_548 or x0 === 126_551 or
             x0 === 126_553 or x0 === 126_555 or x0 === 126_557 or x0 === 126_559 or
             (x0 >= 126_561 and x0 <= 126_562) or x0 === 126_564 or
             (x0 >= 126_567 and x0 <= 126_570) or (x0 >= 126_572 and x0 <= 126_578) or
             (x0 >= 126_580 and x0 <= 126_583) or (x0 >= 126_585 and x0 <= 126_588) or
             x0 === 126_590 or (x0 >= 126_592 and x0 <= 126_601) or
             (x0 >= 126_603 and x0 <= 126_619) or (x0 >= 126_625 and x0 <= 126_627) or
             (x0 >= 126_629 and x0 <= 126_633) or (x0 >= 126_635 and x0 <= 126_651) or
             (x0 >= 131_072 and x0 <= 173_789) or (x0 >= 173_824 and x0 <= 177_972) or
             (x0 >= 177_984 and x0 <= 178_205) or (x0 >= 178_208 and x0 <= 183_969) or
             (x0 >= 183_984 and x0 <= 191_456) or (x0 >= 194_560 and x0 <= 195_101) or
             (x0 >= 196_608 and x0 <= 201_546) do
    variable_start_chars__1(
      rest,
      [x0] ++ acc,
      stack,
      context,
      comb__line,
      comb__offset + byte_size(<<x0::utf8>>)
    )
  end

  def variable_start_chars__0(rest, _acc, _stack, context, line, offset) do
    {:error, "expected variable start", rest, context, line, offset}
  end

  def variable_start_chars__1(rest, acc, _stack, context, line, offset) do
    {:ok, acc, rest, context, line, offset}
  end
end
