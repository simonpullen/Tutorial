// New comment
// StarVw.h : interface of the CStarDrawView class
//
// This is a part of the Microsoft Foundation Classes C++ library.
// Copyright (C) 1992-1997 StarBase Corporation
// All rights reserved.
//
// This source code is only intended as a supplement to the
// Microsoft Foundation Classes Reference and related
// electronic documentation provided with the library.
// See these sources for detailed information regarding the
// Microsoft Foundation Classes product.
/////////////////////////////////////////////////////////////////////////////

class CStarDrawView : public CScrollView
{
protected: // create from serialization only
	CStarDrawView();
	DECLARE_DYNCREATE(CStarDrawView)

// Attributes
public:
	CStarDrawDoc* GetDocument();

protected:
	CStroke*    m_pStrokeCur;   // the stroke in progress
	CPoint      m_ptPrev;       // the last mouse pt in the stroke in progress

// Operations
public:
        void ResyncScrollSizes();       // ensure scroll info is up-to-date

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CStarDrawView)
	public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual void OnInitialUpdate();
	virtual void OnPrepareDC(CDC* pDC, CPrintInfo* pInfo = NULL);
	protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	virtual void OnPrint(CDC* pDC, CPrintInfo* pInfo);
	//}}AFX_VIRTUAL

// Implementation
public:
	void PrintTitlePage(CDC* pDC, CPrintInfo* pInfo);
	void PrintPageHeader(CDC* pDC, CPrintInfo* pInfo, CString& strHeader);
	virtual ~CStarDrawView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CStarDrawView)
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg void OnCancelEditSrvr();
	afx_msg void OnSize(UINT nType, int cx, int cy);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in StarVw.cpp
inline CStarDrawDoc* CStarDrawView::GetDocument()
   { return (CStarDrawDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////
