using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace EfAssociations.Tests
{
    [TestClass]
    public class Tests
    {
        [ClassInitialize]
        public static void ClassInitialize(TestContext testContext)
        {
            var context = new EfEntities();
            var c = new OldC { Timestamp = DateTime.UtcNow };
            context.OldC.AddObject(c);
            context.SaveChanges();
        }

        [TestMethod]
        public void Create_NewA()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewA select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }

        [TestMethod]
        public void Create_NewD_A()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewD_A select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            var d = new NewD_A { Timestamp = DateTime.UtcNow };
            d.NewA = a;
            context.NewD_A.AddObject(d);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }

        [TestMethod]
        public void Create_NewG_AB()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewG_AB select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            var b = new NewB { Timestamp = DateTime.UtcNow };
            context.NewB.AddObject(b);

            var g = new NewG_AB { Timestamp = DateTime.UtcNow };
            g.NewA = a;
            g.NewB = b;
            context.NewG_AB.AddObject(g);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }

        [TestMethod]
        public void Create_NewH_AC()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewH_AC select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            var c = (from x in context.OldC select x).First();

            var h = new NewH_AC { Timestamp = DateTime.UtcNow };
            h.NewA = a;
            h.OldC = c;
            context.NewH_AC.AddObject(h);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }

        [TestMethod]
        public void Create_NewG_keyAB()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewG_keyAB select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            var b = new NewB { Timestamp = DateTime.UtcNow };
            context.NewB.AddObject(b);

            var g = new NewG_keyAB { Timestamp = DateTime.UtcNow };
            g.NewA = a;
            g.NewB = b;
            context.NewG_keyAB.AddObject(g);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }

        [TestMethod]
        public void Create_NewH_keyAC()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewH_keyAC select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            var c = (from x in context.OldC select x).First();

            var h = new NewH_keyAC { Timestamp = DateTime.UtcNow };
            h.NewA = a;
            h.OldC = c;
            context.NewH_keyAC.AddObject(h);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }

        [TestMethod]
        public void Create_NewI_D_A()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewI_D_A select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            var d = new NewD_A { Timestamp = DateTime.UtcNow };
            d.NewA = a;
            context.NewD_A.AddObject(d);

            var i = new NewI_D_A { Timestamp = DateTime.UtcNow };
            i.NewD_A = d;
            context.NewI_D_A.AddObject(i);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }

        [TestMethod]
        public void Create_NewJ_DE_AB()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewJ_DE_AB select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            var b = new NewB { Timestamp = DateTime.UtcNow };
            context.NewB.AddObject(b);

            var d = new NewD_A { Timestamp = DateTime.UtcNow };
            d.NewA = a;
            context.NewD_A.AddObject(d);

            var e = new NewE_B { Timestamp = DateTime.UtcNow };
            e.NewB = b;
            context.NewE_B.AddObject(e);

            var j = new NewJ_DE_AB { Timestamp = DateTime.UtcNow };
            j.NewD_A = d;
            j.NewE_B = e;
            context.NewJ_DE_AB.AddObject(j);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }

        [TestMethod]
        public void Create_NewK_DF_AC()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewK_DF_AC select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            var c = (from x in context.OldC select x).First();

            var d = new NewD_A { Timestamp = DateTime.UtcNow };
            d.NewA = a;
            context.NewD_A.AddObject(d);

            var f = new NewF_C { Timestamp = DateTime.UtcNow };
            f.OldC = c;
            context.NewF_C.AddObject(f);

            var k = new NewK_DF_AC { Timestamp = DateTime.UtcNow };
            k.NewD_A = d;
            k.NewF_C = f;
            context.NewK_DF_AC.AddObject(k);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }

        [TestMethod]
        public void Create_NewL_G_AB()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewL_G_AB select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            var b = new NewB { Timestamp = DateTime.UtcNow };
            context.NewB.AddObject(b);

            var g = new NewG_AB { Timestamp = DateTime.UtcNow };
            g.NewA = a;
            g.NewB = b;
            context.NewG_AB.AddObject(g);

            var l = new NewL_G_AB { Timestamp = DateTime.UtcNow };
            l.NewG_AB = g;
            context.NewL_G_AB.AddObject(l);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }

        [TestMethod]
        public void Create_NewM_H_AC()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewM_H_AC select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            var c = (from x in context.OldC select x).First();

            var h = new NewH_AC { Timestamp = DateTime.UtcNow };
            h.NewA = a;
            h.OldC = c;
            context.NewH_AC.AddObject(h);

            var m = new NewM_H_AC { Timestamp = DateTime.UtcNow };
            m.NewH_AC = h;
            context.NewM_H_AC.AddObject(m);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }

        [TestMethod]
        public void Create_NewN_keyDEC_AB()
        {
            var context = new EfEntities();
            Func<int> ItemCount = (() => (from x in context.NewN_keyDEC_AB select x).Count());

            int countBefore = ItemCount();

            var a = new NewA { Timestamp = DateTime.UtcNow };
            context.NewA.AddObject(a);

            var b = new NewB { Timestamp = DateTime.UtcNow };
            context.NewB.AddObject(b);

            var d = new NewD_A { Timestamp = DateTime.UtcNow };
            d.NewA = a;
            context.NewD_A.AddObject(d);

            var e = new NewE_B { Timestamp = DateTime.UtcNow };
            e.NewB = b;
            context.NewE_B.AddObject(e);

            var c = (from x in context.OldC select x).First();

            var n = new NewN_keyDEC_AB { Timestamp = DateTime.UtcNow };
            n.NewD_A = d;
            n.NewE_B = e;
            n.OldC = c;
            context.NewN_keyDEC_AB.AddObject(n);

            context.SaveChanges();
            int countAfter = ItemCount();

            Assert.AreEqual(countBefore + 1, countAfter);
        }
    }
}
