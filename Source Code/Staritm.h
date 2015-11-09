// StarItm.h : interface of the CStarDrawItem class
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

class CStarDrawItem : public COleServerItem
{
	DECLARE_DYNAMIC(CStarDrawItem)

// Constructors
public:
	CStarDrawItem(CStarDrawDoc* pContainerDoc);

// Attributes
	CStarDrawDoc* GetDocument() const
		{ return (CStarDrawDoc*)COleServerItem::GetDocument(); }

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CStarDrawItem)
	public:
	virtual BOOL OnDraw(CDC* pDC, CSize& rSize);
	virtual BOOL OnGetExtent(DVASPECT dwDrawAspect, CSize& rSize);
	//}}AFX_VIRTUAL

// Implementation
public:
	~CStarDrawItem();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:
	virtual void Serialize(CArchive& ar);   // overridden for document i/o
};

/////////////////////////////////////////////////////////////////////////////
