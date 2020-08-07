#include <a_samp>

#define RUN_TESTS
#include <YSI_Core\y_testing>

#include "cec.inc"

main() { }

new 
    input[144] = "���{FFFF00}�չ���բͧ��{FFFFFF}ʺ�����", 
    output[144]
;

// ���ͺ�Ѻ��ó�ء��
Test:TestCountVowel()
{
    printf("vowel: %d", CE_CountVowel(input));
    ASSERT(CE_CountVowel(input) == 5);
}

// ���ͺ�Ѻ TAG ��
Test:TestCountTag()
{
    printf("tag: %d", CE_CountTag(input));
    ASSERT(CE_CountTag(input) == 2);
}

// ���ͺ�ŧ��ͤ���
Test:TestConvert()
{
    CE_Convert(input, output);
    printf("output: %s", output);
    ASSERT(!strcmp(output, "���{FFFF00}�չ����{FFFFFF}�ͧ��ʺ�����", true));
}