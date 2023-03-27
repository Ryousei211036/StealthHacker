//==============================================================================================
//
// 入力処理　　　input.cpp
// 土田凌聖
//
//==============================================================================================

//**********************************************************************************************
// インクルード
//**********************************************************************************************
#include"input.h"

//**********************************************************************************************
// 静的メンバ変数の宣言
//**********************************************************************************************
LPDIRECTINPUT8 CInput::m_pInput = NULL;

//==============================================================================================
// コンストラクタ
//==============================================================================================
CInput::CInput()
{
}

//==============================================================================================
// デストラクタ
//==============================================================================================
CInput::~CInput()
{
}

//==============================================================================================
// 初期化処理
//==============================================================================================
HRESULT CInput::Init(HINSTANCE hInstance, HWND hWnd)
{
	//DirectInputオブジェクトの生成
	if (FAILED(DirectInput8Create(hInstance, DIRECTINPUT_VERSION,
		IID_IDirectInput8,
		(void**)&m_pInput, NULL)))
	{
		return E_FAIL;
	}

	//入力デバイス(キーボード)の生成
	if (FAILED(m_pInput->CreateDevice(GUID_SysKeyboard,
		&m_pDevice, NULL)))
	{
		return E_FAIL;
	}

	//データフォーマットを設定
	if (FAILED(m_pDevice->SetDataFormat(&c_dfDIKeyboard)))
	{
		return E_FAIL;
	}

	//協調モードを設定
	if (FAILED(m_pDevice->SetCooperativeLevel(hWnd,
		(DISCL_FOREGROUND | DISCL_NONEXCLUSIVE))))
	{
		return E_FAIL;
	}

	//キーボードのアクセス権を獲得
	m_pDevice->Acquire();

	return S_OK;
}

//==============================================================================================
// 終了処理
//==============================================================================================
void CInput::Uninit()
{
	//入力デバイス(キーボードの破棄)
	if (m_pDevice != NULL)
	{
		m_pDevice->Unacquire();		//キーボードへのアクセス権を破棄
		m_pDevice->Release();
		m_pDevice = NULL;
	}

	//DirectInputオブジェクトの破棄
	if (m_pInput != NULL)
	{
		m_pInput->Release();
		m_pInput = NULL;
	}
}